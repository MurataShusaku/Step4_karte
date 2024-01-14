class KarteHistory < ApplicationRecord
	has_many :karte_treatments
	
	self.primary_key = "karte_history_id"
	validates :doctor, presence: true
	validates :karte_id, presence: true
	validates :prescription_additional_comment, presence: true
end