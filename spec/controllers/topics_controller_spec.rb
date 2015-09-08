require 'rails_helper'

describe TopicsController do
  describe '#index' do
    it 'loads a list of topics' do
      get :index
      p Topic.all
      expect(assigns(:topics)).to match(Topic.all)
    end

    it 'renders index page' do
    end

  end

  describe '#update' do

    it 'will update a topic with valid parameters' do
      allow(controller).to receive(:current_user) { FactoryGirl.create(:user) }
      topic = FactoryGirl.create(:topic)
      old_topic_name = topic.name
      attribs = FactoryGirl.attributes_for(:topic)

      expect do 
        put :update, {id: topic.id, topic: attribs} 
        topic.reload 
      end.to change{topic.name}

    end

    it 'will update a topic with valid parameters' do
      allow(controller).to receive(:current_user) { FactoryGirl.create(:user) }
      topic = FactoryGirl.create(:topic)
      old_topic_name = topic.name
      attribs = FactoryGirl.attributes_for(:topic)

      # expect{ put :update, {id: topic.id, topic: attribs} ; topic.reload }.to change{topic.name}

      put :update, {id: topic.id, topic: attribs} 
      topic.reload
      expect(topic.name).to eq(attribs[:name])
    end

    it 'will redirect on a successful update' do
      allow(controller).to receive(:current_user) { FactoryGirl.create(:user) }
      topic = FactoryGirl.create(:topic)
      old_topic_name = topic.name
      attribs = FactoryGirl.attributes_for(:topic)

      put :update, {id: topic.id, topic: attribs} 
      topic.reload
      expect(response).to redirect_to topic_path(topic)
    end

    it 'will not update a topic with bad parameters' do
      allow(controller).to receive(:current_user) { FactoryGirl.create(:user) }
      topic = FactoryGirl.create(:topic)
      old_topic_name = topic.name
      attribs = FactoryGirl.attributes_for(:bad_topic)

      put :update, {id: topic.id, topic: attribs} 
      topic.reload
      expect(topic.name).to eq(old_topic_name)

    end

  end
end