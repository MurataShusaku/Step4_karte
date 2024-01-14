class CreateTreatmentMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :treatment_masters, primary_key: :treatment_id do |t|
      t.string :name
      t.integer :score
     
    end
  end
end
