class CommentsController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)

    if @comment.save
      flash[:notice] = "Comment successfully added!"
      redirect_to question_path @comment.question
    else
      flash[:alert] = "Comment not added. Try again!"
      redirect_to new_question_comment_path @comment.question, @comment
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end

end
