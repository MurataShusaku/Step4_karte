class CreateKarteHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :karte_histories do |t|
      t.string :doctor
      t.string :karte_id
      t.timestamps
      t.text :prescription_additional_comment
    end
  end
end

