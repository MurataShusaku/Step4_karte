class KarteTreatment < ApplicationRecord
	belongs_to :karte_history
	belongs_to :treatment_master, foreign_key: "treatment_id"
	self.primary_key = [:treatment_id, :karte_history_id]
	validates :treatment_id, presence: true
	validates :karte_history_id, presence: true
end


