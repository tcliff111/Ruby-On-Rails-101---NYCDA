class HomeController < ApplicationController

	def index
	end

	def other
		@posts = Post.all
	end

end