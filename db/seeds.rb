# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create!(username:'steven', email:Faker::Internet.email, password:'123456')
6.times do
  top = Topic.create!(name: Faker::Company.catch_phrase)
  6.times do
    thr = Conversation.create!(name:Faker::Commerce.product_name, topic:top, author:u )
    Random.rand(20).times do
      msg = Message.create!(author:u, conversation:thr, content:Faker::Lorem.sentence)
    end
  end
end