class AddYearToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :year, :string
  end
end
