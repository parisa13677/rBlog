# frozen_string_literal: true

# class Categories Controller
class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @posts = @category.posts
  end
end
