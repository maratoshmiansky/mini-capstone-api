class ProductsController < ApplicationController
  def available_products
    render json: Product.all.as_json
  end
end
