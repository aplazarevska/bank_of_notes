class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :denomination
      t.string :condition
      t.text :description
      t.float :price
      t.integer :buyer_id
      t.integer :seller_id
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
