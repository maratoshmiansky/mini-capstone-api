class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true  # allows us to create a carted product instance without creating an order
  belongs_to :product
end
