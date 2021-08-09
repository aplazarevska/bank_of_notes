class Listing < ApplicationRecord
  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"
  has_many_attached :images
  # has_one :year
  # has_one :issuing_country
  # has_many_attached :pictures

  # each listing has to have price and images
  validates :price, presence: true
  validates :images, presence: true
end
