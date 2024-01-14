class CreateKarteTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :karte_treatments, primary_key: [:treatment_id, :karte_history_id] do |t|
     t.string :treatment_id
     t.string :karte_history_id
   
    end
  end
end
