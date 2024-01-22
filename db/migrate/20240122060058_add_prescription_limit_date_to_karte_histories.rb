class AddPrescriptionLimitDateToKarteHistories < ActiveRecord::Migration[7.1]
  def change
    add_column :karte_histories, :prescription_limit_date, :date
  end
end
