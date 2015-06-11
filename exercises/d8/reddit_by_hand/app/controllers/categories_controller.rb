class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def new
		@categories = Category.new
	end

	def create
		@category = Category.new(params["category"].permit(:name))
		@category.save

		redirect_to "/users"
	end
end
