class CreateMedicineMasters < ActiveRecord::Migration[7.1]
  def change
    create_table :medicine_masters do |t|
      t.string :name
      t.string :usage
      t.string :unit
    end
  end
end
