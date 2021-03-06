class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category =Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def show
    category_id = params[:id]
    @category = Category.find(category_id)
    @products = Product.where(category_id: category_id)
  end

  # def edit
  #   @category = Category.find(params[:id])
  # end

  # def update
  #   @category = Category.find(params[:id])
  #   @category.update(category_params)
  # end

  # def destroy
  #   @category = Category.find(params[:id])
  #   @category.destroy
  #   redirect_to categories_path
  # end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
