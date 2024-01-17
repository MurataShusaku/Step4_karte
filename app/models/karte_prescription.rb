class KartePrescription < ApplicationRecord
	belongs_to :karte_history
	belongs_to :medicine_master, foreign_key: "medicine_id"
	

	validates :karte_history_id, presence: true
	validates :medicine_id, presence: true
	validates :as_needed, presence: true
	validates :as_needed_coment, presence: true
	validates :coment, presence: true

end
