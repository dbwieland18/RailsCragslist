class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @categories = Category.all
    render "posts/create"
  end

  def create
    @post = Post.create!(title: params[:title],
                         price: params[:price],
                         description: params[:description],
                         email: params[:email],
                         category_id: params[:category])
    redirect_to show_post_path(@post)
  end
end
