class KarteTreatment < ApplicationRecord

	belongs_to :karte_history

	self.primary_key = [:treatment_id, :karte_history_id]
	validates :treatment_id, presence: true
	validates :karte_history_id, presence: true
end


