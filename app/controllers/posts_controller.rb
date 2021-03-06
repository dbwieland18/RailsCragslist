class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all
    render "posts/create"
  end

  def create
    puts params
    @post = Post.create!(post_params)
    redirect_to show_post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    cat_id = @post.category.id
    @post.delete
    redirect_to show_category_path(cat_id)
  end

  private

  def post_params
    params.require(:post).permit(:category_id, :title, :description, :email, :price)
  end
end
