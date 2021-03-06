class Profile < ApplicationRecord
  belongs_to :user
  has_many :listings_to_sell, class_name: "Listing", foreign_key: "seller_id"
  has_many :listings_to_buy, class_name: "Listing", foreign_key: "buyer_id"
  # has_one :address
  
  # the profile has to have username
  validates :username, presence: true
end
