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
  
  # validation custom method
  before_validation :number_of_images

  # custom validation to limit number of images that are uploaded to 2 and throws an error if otherwise
  def number_of_images
    if self.images.length != 2
      errors.add :base, :invalid, message: "Please upload two images, obverse and reverse!"
    end
  end
end
