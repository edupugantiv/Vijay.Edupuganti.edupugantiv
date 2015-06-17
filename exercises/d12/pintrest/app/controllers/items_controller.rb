class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def index
		@items = Item.all
	end
	
	def create
		@item = Item.new(params["item"].permit(:title, :description, :user_id))
		@item.save
		redirect_to '/items'
	end
end