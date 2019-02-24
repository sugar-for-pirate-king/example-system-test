# frozen_string_literal: true

# CRUD Product
class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    build_product
  end

  def create
    build_product(product_params)

    return unless @product.save

    redirect_to products_path, notice: 'Product has been created'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def build_product(params = nil)
    @product = Product.new(params)
  end
end
