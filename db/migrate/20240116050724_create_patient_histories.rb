class CreatePatientHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_histories do |t|
      t.integer :patient_id
      t.string :name
      t.string :kana_name
      t.integer :sex_id
      t.integer :status_id
      t.string :insuranse_card_number
      t.string :insured_persons_numer
      t.string :public_expense_number
      t.string :public_healthcare_number
      t.string :coverage_type
      t.string :address
      t.string :memo
      t.integer :insuranse_rate
      t.string :insured_relationship_type
      t.string :insuranse_type
    end
  end
end
