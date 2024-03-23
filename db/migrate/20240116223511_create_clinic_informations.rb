class CreateClinicInformations < ActiveRecord::Migration[7.1]
  def change
    create_table :clinic_informations do |t|
      t.string "name"
      t.string "postal_code"
      t.string "address"
      t.string "phone_number"
      t.string "prefecture_code"
      t.string "clinic_code"
    end
  end
end
