require 'rails_helper'

RSpec.describe QuestionsController, :type => :controller do

 describe 'GET index' do
  it 'populates an array of questions' do
    question = FactoryGirl.create(:question)
    get :index
    assigns(:questions).should eq([question])
  end
  it 'renders the :index template' do
    get :index
    response.should render_template :index
  end
end

describe 'GET show' do
  it 'assigns requested question to @question' do
    question = FactoryGirl.create(:question)
    get :show, id: question.id
    assigns(:question).should eq(question)
  end
  it 'renders the :show template' do
    get :show, id: FactoryGirl.create(:question)
    response.should render_template :show
  end
end

describe 'GET new' do
  it 'renders the :new template' do
    get :new
  end
end

describe 'POST create' do
  context 'with valid attributes' do 
    it 'creates a new question' do
      expect{ post :create, question: FactoryGirl.attributes_for(:question) }.to change(Question,:count).by(1)
    end
    it 'redirects to the home page' do
      expect{ post :create, question: FactoryGirl.attributes_for(:question) }.to change(Question,:count).by(1)
      expect(response).to redirect_to(root_path)
    end
  end

  context 'with invalid attributes' do
    it 'does not save the new question to the database' do
      expect{ post :create, question: FactoryGirl.attributes_for(:invalid_question) }.to_not change(Question,:count)
    end
    it 're-renders the new template' do
      post :create, question: FactoryGirl.attributes_for(:invalid_question)
      response.should render_template(:new)
    end
  end
end

describe 'PUT update' do

  before :each do 
    @question = FactoryGirl.create(:question, question: 'What time is it?', answer: 'hammer time', submission: 'bleh')
  end

  context 'with valid attributes' do
    it 'locates the requested contact for update' do
      put :update, id: @question, question: FactoryGirl.attributes_for(:question)
      assigns(:question).should eq(@question)
    end

    it "changes @question's attributes" do
      put :update, id: @question, question: FactoryGirl.attributes_for(:question, question: 'How are you?', answer: 'fine, thanks', submission: 'alright')
      @question.reload
      @question.question.should eq('How are you?')
      @question.answer.should eq('fine, thanks')
      @question.submission.should eq('alright')
    end

    it "redirects to updated question" do
      put :update, id: @question, question: FactoryGirl.attributes_for(:question)
      response.should redirect_to @question
    end

  end

  context 'with invalid attributes' do
    it 'locates the requested contact for update' do
    end

    it "does not chabge @question's attributes" do
    end

    it 're-renders the edit method' do
    end

  end


end







end
