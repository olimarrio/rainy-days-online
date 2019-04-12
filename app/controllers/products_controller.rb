class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = policy_scope(Product)
  end

  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(restaurant)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  def pottery
    @pottery_products = Product.where(category: "Pottery")
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product
  end
end
