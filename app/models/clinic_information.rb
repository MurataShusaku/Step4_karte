class ClinicInformation < ApplicationRecord

		validates :name, presence: true
		validates :address, presence: true
		validates :phone_number, presence: true
		validates :prefecture_code, presence: true
		validates :clinic_code, presence: true
end
