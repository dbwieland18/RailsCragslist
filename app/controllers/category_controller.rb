class CategoryController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @posts = Category.find(params[:category]).posts
  end

end
