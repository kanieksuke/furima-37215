class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture, :city, :addresses, :building, :phone_number, :order, :user_id, :item_id

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city
    validates :addresses
    validates :phone_number, format: {with: /\A[0-9]{10, 11}\z/, message: "is invalid. 10 digits or more and 11 digits or less"}
  end

  validates :prefecture, numericality: {other_than: 1, message: "can't be blank"}
end