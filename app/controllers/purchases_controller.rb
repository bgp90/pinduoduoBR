class PurchasesController < ApplicationController
  before_action :set_product, only: [:new, :create]
  def index
    Purchase.all?
  end

  def show
    @purchase = Purchase.find(params[:id])
    @purchase = Purchase.new
    @product = @purchase.product
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = @product.purchases.build(purchase_params)
    @purchase.user = current_user
    @purchase.value = @purchase.quantity * @product.current_price
    if @purchase.save
      @product.sold_count = @product.sold_count + @purchase.quantity
      @product.avaiable_items = @product.avaiable_items - @purchase.quantity

      disc_per_purchase = ((@product.initial_price - @product.price_goal)/(@product.sold_count + @product.avaiable_items)) * @purchase.quantity

      @product.current_price = @product.current_price - disc_per_purchase

      @product.save
      redirect_to purchase_path(@purchase), notice: "Thanks for buying"

    else
      flash[:alert]="Insira a quantidade"
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quantity)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
