class AddBirthdateToPatientHistories < ActiveRecord::Migration[7.1]
  def change
    add_column :patient_histories, :birthdate, :date
  end
end
