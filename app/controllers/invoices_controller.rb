class InvoicesController < ApplicationController
	def show
		@karte_history = KarteHistory.find(params[:id])
		@treatments = @karte_history.treatments
	end
end
