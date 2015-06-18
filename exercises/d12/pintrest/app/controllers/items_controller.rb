class ItemsController < ApplicationController

	before_action :authenticate_user!

	def new
		@item = Item.new
	end

	def index
		@items = Item.all
	end
	
	def create
		@item = Item.new(params["item"].permit(:title, :description, :user_id))
		if @item.save
			redirect_to '/items', notice: "Item created"
		else
			redirect_to '/items', notice: "Item not created"
		end
	end
end