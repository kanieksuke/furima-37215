class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  belongs_to :user
  has_one    :order

  with_options presence: true do
    validates :image
    validates :name
    validates :info
    validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
  end

  validates :category_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :sales_status_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :shipping_fee_status_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :scheduled_delivery_id, numericality: { other_than: 1, message: "can't be blank"}
end
