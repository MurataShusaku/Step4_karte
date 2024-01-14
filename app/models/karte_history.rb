class KarteHistory < ApplicationRecord
	has_many :karte_treatments
	
	self.primary_key = "karte_history_id"
	validates :doctor, presence: true
end