# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.create!(username:'steven', email:Faker::Internet.email, password:'123456')
users = []
10.times do
  users << User.create!(username:Faker::Internet.user_name, email:Faker::Internet.email, password:'123456')
end
6.times do
  top = Topic.create!(name: Faker::Company.catch_phrase)
  6.times do
    thr_args = { subject:Faker::Commerce.product_name, 
                 topic:top, 
                 author:users.sample, 
                 is_public:[true, false].sample, 
                 is_published:[true, false].sample
                }
    thr = Conversation.create!(thr_args)
    (5 + Random.rand(20)).times do
      msg_args ={ author:users.sample, 
                  conversation:thr, 
                  content:Faker::Lorem.paragraph(3), 
                  is_public:[true, false].sample, 
                  is_published:[true, false].sample
                }
      msg = Message.create!(msg_args)
    end
  end
end