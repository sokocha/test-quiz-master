class QuestionsController < ApplicationController
  before_filter :find_question, only: [:show, :edit, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    if @question.save
      redirect_to root_path, notice: 'Question created successfully.'
    else
      render :new
    end
  end

  def update
    if @question.update_attributes question_params
      # redirect_to root_path, notice: 'Question saved successfully.'
      render :answer
    else
      render :edit
    end
  end

  def answer
    # TODO
    @question = Question.find(params[:id])
    @submission = @question.submission  
  end

  private

  def find_question
    @question = Question.find(params[:id])
    @submission = @question.submission
  end

  def question_params
    params.require(:question).permit(:question, :answer, :submission)
  end
end
