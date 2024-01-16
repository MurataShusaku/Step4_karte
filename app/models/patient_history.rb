class PatientHistory < ApplicationRecord
	belongs_to :patient

	validates :patient_id, presence: true
	validates :name, presence: true
	validates :kana_name, presence: true
	validates :insuranse_card_number, presence: true
end
