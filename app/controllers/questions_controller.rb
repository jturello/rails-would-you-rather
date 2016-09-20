class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end




  private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end

end
