class EventsController < ApplicationController

	before_action :authenticate_user!

	def new
		@event = Event.new
	end

	def create
		event = Event.new(params[:event].permit(:name, :description, :location, :date))
		event.user = current_user
		event.save
		redirect_to events_url
	end

	def index
		@events = Event.where(user: current_user)
	end

	def edit

	end

	def update

	end

	def show

	end

end
