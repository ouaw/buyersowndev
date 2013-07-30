class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :user_id
      t.integer :school_id
      t.string :description
      t.string :neighborhood
      t.string :sub_neighborhood
      t.string :property_type
      t.integer :minimum_bedrooms
      t.integer :minimum_bathrooms
      t.integer :minimum_total_floor_area
      t.integer :minimum_lot_size
      t.integer :maximum_price
      t.string :work_address_unit_number_1
      t.string :work_address_street_number_1
      t.string :work_address_street_name_1
      t.string :work_address_street_type_1
      t.string :work_address_postal_code_1
      t.string :work_address_city_1
      t.string :work_address_province_1
      t.string :work_address_country_1
      t.string :max_distance_to_
      t.integer :work_address_1
      t.string :work_address_preferred_transportation_method_1
      t.integer :max_duration_to_work_1
      t.string :work_address_unit_number_2
      t.string :work_address_street_number_2
      t.string :work_address_street_name_2
      t.string :work_address_street_type_2
      t.string :work_address_postal_code_2
      t.string :work_address_city_2
      t.string :work_address_province_2
      t.string :work_address_country_2
      t.string :max_distance_to_
      t.integer :work_address_2
      t.string :work_address_preferred_transportation_method_2
      t.integer :max_duration_to_work_2
      t.boolean :flexible_neighborhood
      t.boolean :flexible_property_type
      t.boolean :flexible_minimum_bedrooms
      t.boolean :flexible_minimum_bathrooms
      t.boolean :flexible_minimum_total_floor_area
      t.boolean :flexible_minimum_lot_size
      t.boolean :flexible_maximum_price
      t.boolean :flexible_school
      t.boolean :flexible_work_address
      t.float :weight_neighborhood
      t.float :weight_property_type
      t.float :weight_minimum_bedrooms
      t.float :weight_minimum_bathrooms
      t.float :weight_minimum_total_floor_area
      t.float :weight_minimum_lot_size
      t.float :weight_maximum_price
      t.float :weight_school
      t.float :weight_work_address

      t.timestamps
    end
  end
end
