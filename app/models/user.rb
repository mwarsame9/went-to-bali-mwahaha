class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :password, :presence => true
  validates_length_of :password, minimum: 8

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
