class CreateStaffHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :staff_histories do |t|
      t.integer :staff_id
      t.string :name
    end
  end
end
