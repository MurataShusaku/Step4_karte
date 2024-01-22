class CreateTreatmentMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :treatment_masters do |t|
      t.string :name
      t.integer :score
      t.integer :category
      t.boolean :insuranse_cover, default:false
    end
    add_index :treatment_masters, :name, unique: true
  end
end
