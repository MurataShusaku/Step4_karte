class CreateKartePrescriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :karte_prescriptions do |t|
      t.integer :karte_history_id
      t.integer :medicine_id
      t.integer :amount
      t.string :as_needed
      t.string :as_needed_coment
      t.string :coment
    end
  end
end
