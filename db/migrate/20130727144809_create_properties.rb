class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :school_id
      t.string :neighborhood
      t.string :sub_neighborhood
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :total_floor_area
      t.integer :lot_size
      t.integer :price

      t.timestamps
    end
  end
end
