class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :created_by
      t.timestamp :created_at
    end
  end
end
