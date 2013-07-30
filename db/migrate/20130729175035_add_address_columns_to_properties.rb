class AddAddressColumnsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :address_unit_number_1, :string
    add_column :properties, :address_street_number_1, :string
    add_column :properties, :address_street_name_1, :string
    add_column :properties, :address_street_type_1, :string
    add_column :properties, :address_postal_code_1, :string
    add_column :properties, :address_city_1, :string
    add_column :properties, :address_province_1, :string
    add_column :properties, :address_country_1, :string
  end
end
