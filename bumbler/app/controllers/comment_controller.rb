class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :show, :destroy]
  def index
    @comment =Comment.all
  end

  def new
    if current_user
      @comment = Comment.new
    else
      flash[:notice] = "You're not signed into Bumbler!"
      redirect_to signin_path
    end

  end

  def edit
  end

  def show
  end

  def destroy
    @comment.destroy
    redirect_to comments_path, notice: "Comment has been obliterated!"
  end

  def create
    @comment= Comment.create(comment_params)
    redirect_to @comment, notice: "New comment created!"
  end

  def update
    @comment.update(comment_params)
    redirect_to @comment, notice: "Your comment has been updated!"
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:post).permit(:body).merge(user_id: current_user.id)
  end

end


end
