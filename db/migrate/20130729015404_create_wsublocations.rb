class CreateWsublocations < ActiveRecord::Migration
  def change
    create_table :wsublocations do |t|
      t.integer :wish_id
      t.integer :subneighborhood_id

      t.timestamps
    end
  end
end
