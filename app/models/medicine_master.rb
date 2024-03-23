class MedicineMaster < ApplicationRecord
	has_many :karte_prescriptions

	validates :name, presence: true
	validates :usage, presence: true
	validates :unit, presence: true
end
