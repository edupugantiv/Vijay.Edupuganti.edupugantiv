class StoriesController < ApplicationController
	
	def new
		@story = Story.new
	end

	def index
		@stories = Story.all
	end

	def show
		@story = Story.find(params[:id])
	end

	def create
		@story = Story.new(params["story"].permit(:title , :body, :user_id, :category_id))
		@story.save

		if @story.save
			redirect_to '/stories'
		else
			render :new
		end

	end
end
