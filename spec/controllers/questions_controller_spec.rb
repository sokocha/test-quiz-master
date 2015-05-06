require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do
 # describe "GET index" do
 #   it "has a 200 status code" do
 #     get :index
 #     expect(response.status).to eq(200)
 #   end
 #  end

 describe 'GET index' do
  it 'populates an array of questions' do
  end
  it 'renders the :index template' do
  end
end

describe 'GET show' do
  it 'assigns requested question to @question' do
  end
  it 'renders the :show template' do
  end
end

describe 'GET new' do
  it 'assigns a new question to @question' do
  end
  it 'renders the :new template' do
  end
end

describe 'POST create' do
  context 'with valid attributes' do 
    it 'saves the new question to the database' do
    end
    it 'redirects to the home page' do
    end
  end

  context 'with invalid attributes' do
    it 'does not save the new question to the database' do
    end
    it 're-renders the new template' do
    end
  end
end







end
