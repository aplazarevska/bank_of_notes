class AddSuburbToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :suburb, :string
  end
end
