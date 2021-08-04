class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :unit
      t.string :street
      t.string :post_code
      t.string :suburb
      t.string :country
      t.string :state
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
