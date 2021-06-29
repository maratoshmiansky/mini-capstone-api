class Order < ApplicationRecord
  belongs_to :user, :product  # should this be on two lines?
end
