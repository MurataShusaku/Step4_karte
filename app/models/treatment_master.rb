class TreatmentMaster < ApplicationRecord
	self.primary_key = "treatment_id"
	has_many :karte_treatments
	validates :name, presence: true
	validates :score, presence: true

end
