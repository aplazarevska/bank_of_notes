class AddIssuingCountryToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :issuing_country, :string
  end
end
