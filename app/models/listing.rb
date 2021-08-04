class Listing < ApplicationRecord
  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"
  has_many :images
  has_one :year
  has_one :issuing_country
end
