class AddIdstoStories < ActiveRecord::Migration
  def change
  	add_column :stories, :user_id, :integer
  	add_column :stories, :category_id, :integer
  end
end
