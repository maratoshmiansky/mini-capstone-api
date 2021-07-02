class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }  # numericality tests presence, too
  # validates :description, presence: true
  # validates :active, presence: true

  # def supplier # allows me to do product.supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier  # replaces the above method
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  def is_discounted?
    price < 10 # returns true if price < 10 and returns false otherwise
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
