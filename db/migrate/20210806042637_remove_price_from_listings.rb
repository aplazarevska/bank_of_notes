class RemovePriceFromListings < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :price, :float
  end
end
