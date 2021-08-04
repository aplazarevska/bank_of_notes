class CreateIssuingCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :issuing_countries do |t|
      t.string :current_country_name
      t.string :old_country_name
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
