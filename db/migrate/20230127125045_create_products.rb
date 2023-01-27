class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_type
      t.string :product_accessories
      t.string :product_description
      t.bigint :per_day_price
      t.datetime :product_available_from_date
      t.datetime :product_available_to_date

      t.timestamps
    end
  end
end
