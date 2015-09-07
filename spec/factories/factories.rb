FactoryGirl.define do

   factory(:topic) do
     sequence(:name) {|n| "#{Faker::Commerce.product_name} #{n} "} 
     
     factory(:bad_topic) do
        name nil
     end
   end

   factory(:user) do
      username Faker::Internet.user_name
      password 'p123456'

      factory(:invalid_user) do
        username nil
      end
   end

   # factory(:conversation) do
   #    subject Faker::Commerce.product_name
   #    association :author
   # end

end
