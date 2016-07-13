class AuthorizationIndependentController < ApplicationController

	def index
		@events = Event.all
	end
end
