class CreateStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :staffs do |t|
      t.timestamp :created_at
      t.string :created_by
    end
  end
end
