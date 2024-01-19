class KarteHistory < ApplicationRecord
	has_many :karte_treatments, dependent: :destroy
	has_many :treatments, through: :karte_treatments, source: :treatment_master
	has_many :karte_prescriptions
	has_many :medicines,through: :karte_prescriptions, source: :medicine_master
	belongs_to :karte
	belongs_to :staff, foreign_key: "doctor"

	validates :doctor, presence: true
	validates :karte_id, presence: true
end