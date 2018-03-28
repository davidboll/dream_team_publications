# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Category.destroy_all

Category.create([
  {name: 'Fashion'},
  {name: 'Business'},
  {name: 'Sports'}
])

Article.create([
  {title: 'Aloe Vera', category_ids: [1, 2], image: File.new(Rails.root.join('app', 'assets', 'images', 'mockup-image.jpg')), body: 'The Aloe Vera plant (succulent type)...'},
  {title: 'My amazing article', category_ids: [2, 3], image: File.new(Rails.root.join('app', 'assets', 'images', 'mockup-image.jpg')), body: 'This is some awesome content..'},
  {title: 'Spiderman takes over!', category_ids: [3, 1], image: File.new(Rails.root.join('app', 'assets', 'images', 'mockup-image.jpg')), body: 'SpiderPig, SpiderPig.. does whatever a SpiderPig does'}
])
