class LoginController < ApplicationController

	before_action :authenticate_user!


	def index
		@tweets = Tweet.all
	end

	def register

	end

	def login

	end
end
