# frozen_string_literal: true

# class comments controller
class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    flash[:notice] = 'Comment Added'
    redirect_to post_path(@post)
  end

private

  def comment_params
    params.require(:comment).permit(:name, :email, :body, :post_id)
  end
end
