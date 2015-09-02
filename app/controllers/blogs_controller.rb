class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render new_blog_path
    end
  end

  def destroy
    binding.pry
  end

  def update
    binding.pry
  end

  def show 

  end

  def index
    @blog_posts = Blog.all
  end

  def edit

  end

private

  def blog_params
    params.require(:blog).permit(:title, :content, :user_id) #:categories
  end

end
