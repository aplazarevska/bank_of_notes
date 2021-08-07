class AddPriceToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :price, :decimal, precision: 8, scale: 2
  end
end
