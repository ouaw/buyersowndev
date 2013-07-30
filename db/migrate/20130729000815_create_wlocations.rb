class CreateWlocations < ActiveRecord::Migration
  def change
    create_table :wlocations do |t|
      t.integer :neighborhood_id
      t.integer :wish_id

      t.timestamps
    end
  end
end
