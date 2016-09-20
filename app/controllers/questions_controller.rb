class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice]= "Question created successfully!"
      redirect_to question_path(@question)
    else
      flash[:alert] = "Question not created. Try again!"
      render new
    end
  end



  private
  def question_params
    params.require(:question).permit(:author, :text)
  end

end
