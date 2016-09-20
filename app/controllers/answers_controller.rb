class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)

    if @answer.save
      flash[:notice] = "Answer successfully added!"
      redirect_to question_path @answer.question
    else
      flash[:alert] = "Answer not added. Try again!"
      redirect_to new_question_answer_path @answer.question, @answer
    end
  end




  private
  def answer_params
    params.require(:answer).permit(:text)
  end

end
