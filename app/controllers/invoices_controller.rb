class InvoicesController < ApplicationController
	def show
		@karte_history = KarteHistory.find(params[:id])
		@treatments = @karte_history.treatments
		@clinic_information = ClinicInformation.last
		@patient_history = @karte_history.karte.patient.patient_histories.last
	end
end
