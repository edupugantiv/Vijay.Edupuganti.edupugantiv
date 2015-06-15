class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params["user"].permit(:name , :user_name, :user_id, :category_id)
		@user.save

		redirect_to "/users"
	end
end
