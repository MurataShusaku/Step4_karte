class CreateTreatmentMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :treatment_masters do |t|
      t.string :name
      t.integer :score
     
    end
    add_index :treatment_masters, :name, unique: true
  end
end
