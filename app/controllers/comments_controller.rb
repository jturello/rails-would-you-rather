class CommentsController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comment.new

  end

end
