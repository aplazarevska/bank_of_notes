class CreateYears < ActiveRecord::Migration[6.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.boolean :bc_ad
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
