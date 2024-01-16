class KarteHistory < ApplicationRecord
	has_many :karte_treatments, dependent: :destroy
	has_many :treatments, through: :karte_treatments, source: :treatment_master
	belongs_to :karte

	validates :doctor, presence: true
	validates :karte_id, presence: true

end