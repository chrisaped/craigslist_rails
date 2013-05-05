class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(params[:category])
    redirect_to '/'
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
    session[:category_id] = @category.id
  end



end
