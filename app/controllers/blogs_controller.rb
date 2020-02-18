class BlogsController < ApplicationController

  def show
  	#4-5章始まり
  	@blog = Blog.find(params[:id])
  end

  def index
  	# 記事を全件取得
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end
  #4-3章の始まり
  def create
  	blog = Blog.new(blog_params)
  	blog.save
  	redirect_to blogs_path
  end
  #4-4章にて上saveがaveになってたりとスペルミスが目立つので反省
  def edit
  end

  private

  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
  end
end
