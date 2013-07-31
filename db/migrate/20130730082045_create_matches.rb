class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :property_id
      t.integer :wish_id
      t.float :score

      t.timestamps
    end
  end
end
