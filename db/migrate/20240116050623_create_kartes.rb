class CreateKartes < ActiveRecord::Migration[7.1]
  def change
    create_table :kartes do |t|
      t.string :patient_id
    end
  end
end
