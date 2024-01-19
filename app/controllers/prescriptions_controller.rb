class PrescriptionsController < ApplicationController
	def show
		@karte_history = KarteHistory.find(params[:id])
		@prescriptions = @karte_history.karte_prescriptions
		@clinic_information = ClinicInformation.last
		@patient_history = @karte_history.karte.patient.patient_histories.last

	end
end
