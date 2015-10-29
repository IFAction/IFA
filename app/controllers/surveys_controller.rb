class SurveysController < ActionController::Base
	layout "application"

	def index
		@surveys = Survey.all
	end

end
