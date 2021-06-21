class Product < ApplicationRecord
  def is_discounted?
    price < 10 # returns true if price < 10 and returns false otherwise
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end
end
