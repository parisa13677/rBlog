# frozen_string_literal: true

# class Posts Controller
class PostsController < ApplicationController
  def index
    if params[:search]
      @posts = Post.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 2, :page => params[:page])
    else
      @posts = Post.all.order('created_at DESC').paginate(:per_page => 2, :page => params[:page])
    end
    @categories = Category.all
  end

  def show
    @post = Post.find(params[:id])
    @categories = Category.all
    @comment = Comment.new
    @comments = Comment.all
  end
end
