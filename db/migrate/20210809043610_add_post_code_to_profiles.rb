class AddPostCodeToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :post_code, :string
  end
end
