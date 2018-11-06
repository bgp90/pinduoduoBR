class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
     @product =Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
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

  def product_params
    params.require(:product).permit(:name, :description, :supplier, :current_price, :avg_price, :price_goal, :sold_count, :sale_goal, :category_id)
  end

end
