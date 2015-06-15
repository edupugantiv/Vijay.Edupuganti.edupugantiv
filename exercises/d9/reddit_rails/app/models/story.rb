class Story < ActiveRecord::Base
	belongs_to :category
	belongs_to :user

	validates(:category_id, {
		:presence => true
	})

	validates(:user_id, {
		:presence => true
	})

	validates(:body, :presence => true)
	validates(:title, :presence => true)

end
