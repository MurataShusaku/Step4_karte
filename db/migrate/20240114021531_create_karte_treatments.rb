class CreateKarteTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :karte_treatments, primary_key: [:treatment_id, :karte_history_id] do |t|
      t.integer :treatment_id
      t.integer :karte_history_id
    end
  end
end
