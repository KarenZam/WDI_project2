class RegistrationController < ApplicationController

	def new
		@code = params[:code]
	end

	def create
		@code = params[:code]
	end

end
