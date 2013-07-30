class CreatePschoolcatchments < ActiveRecord::Migration
  def change
    create_table :pschoolcatchments do |t|
      t.integer :property_id
      t.integer :school_id

      t.timestamps
    end
  end
end
