class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  # validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }  # numericality tests presence, too
  validates :description, presence: true
  # validates :active, presence: true

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
