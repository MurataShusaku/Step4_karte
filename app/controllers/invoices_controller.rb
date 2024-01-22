class InvoicesController < ApplicationController
	def show
		@karte_history = KarteHistory.find(params[:id])
		@clinic_information = ClinicInformation.last
		
	end
end
