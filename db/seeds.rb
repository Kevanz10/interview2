# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = PublisherHouse.create(name:'House one')

20.times{
	book1 = Book.create(title:'Book 1', 
	pages: 5, 
	cover: 'http://www.dccomics.com/',
	published_at: '10/10/2010',
	avatar: Rails.root.join("app/assets/images/superman.jpg").open,
	publisher_house_id: a.id)
}


