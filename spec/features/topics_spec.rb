require 'rails_helper'

feature 'Root page' do 

  FactoryGirl.lint
  let!(:sample_user)  { FactoryGirl.create(:user) } 
  let!(:sample_user2)  { FactoryGirl.create(:user) } 
  let!(:sample_topic) { FactoryGirl.create(:topic) }
  let(:sample_convo) { Conversation.create!(topic: sample_topic, subject:'ABC', author: sample_user) }


  context 'I can see topics' do
    it 'should show a list of topics' do
       visit '/'
       expect(page).to have_content(sample_topic.name)
       expect(page).to have_selector('[data-purpose="topic_list"]')
    end
    
    it 'should show the conversations in the topic' do
       sample_convo
       visit '/'
       click_link sample_topic.name
       expect(page).to have_content(sample_convo.subject)
    end
  end
  
end