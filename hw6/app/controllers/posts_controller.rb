class PostsController < ApplicationController
	before_action :authenticate_user!

	def new
		@post = Post.new
	end

	def create
		post = Post.create(params[:post].permit(:title, :text, :image_url))
		post.user_id = current_user.id
		post.save
		redirect_to(posts_url)
	end

	def edit
		@post = Post.find(params[:id])
		if @post.user_id != current_user.id
			redirect_to posts_url
		end
	end

	def update
		@post = Post.find(params[:id])
		@post.update(params[:post].permit(:title, :text, :image_url))
		redirect_to(posts_url)
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end
end
