class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :cart_items
  has_one_attached :image

  def self.ransackable_associations(auth_object = nil)
    ["category"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "price", "product_name", "stock_quantity", "updated_at"]
  end
end
