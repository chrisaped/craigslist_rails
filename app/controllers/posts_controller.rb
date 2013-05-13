class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.category_id = session[:category_id]
    @post.save
    redirect_to '/'
  end

  def show
    @post = Post.find(params[:id])
  end


end
