class Karte < ApplicationRecord
	has_many :karte_histories
	belongs_to :patient

	validates :patient_id, presence: true
end
