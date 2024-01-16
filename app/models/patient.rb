class Patient < ApplicationRecord
	has_many :patient_histories
	has_many :kartes

	
end
