class CreateKarteTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :karte_treatments do |t|
      t.integer :treatment_id
      t.integer :karte_history_id
    end
  
    add_index :karte_treatments, [:treatment_id, :karte_history_id], unique: true
  end
end
