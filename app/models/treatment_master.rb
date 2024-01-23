class TreatmentMaster < ApplicationRecord
	has_many :karte_treatments

	validates :name, presence: true
	validates :score, presence: true
	validates :category, presence: true

end
