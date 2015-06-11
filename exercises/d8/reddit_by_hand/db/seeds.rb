# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Category.destroy_all
Story.destroy_all

user = User.create(name: "Vijay", user_name: "vijaye")

category = Category.create(name: "movies")

story_1 = Story.create(title: "Birdman", body: "Best movie", user_id: user.id, category_id: category.id)
story_2 = Story.create(title: "Boyhood", body: "Amazing", user_id: user.id, category_id: category.id)
story_3 = Story.create(title: "The Dark Knight", body: "Awesome", user_id: user.id, category_id: category.id)
story_4 = Story.create(title: "Last Airbender", body: "<10% Rotten Tomatoes", user_id: user.id, category_id: category.id)
story_5 = Story.create(title: "Avengers", body: "Great", user_id: user.id, category_id: category.id)
