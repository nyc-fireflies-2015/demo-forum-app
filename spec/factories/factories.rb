FactoryGirl.define do

   factory(:topic) do
     name Faker::Commerce.product_name
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
