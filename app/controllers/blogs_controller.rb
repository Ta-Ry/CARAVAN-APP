class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@blog = Blog.new
  end
  #4-3章の始まり
  def create
  	blog = Blog.new(blog_params)
  	blog.ave
  	redirect_to blogs_path
  end

  def edit
  end

  private

  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
