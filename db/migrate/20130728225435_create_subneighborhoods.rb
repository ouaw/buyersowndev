class CreateSubneighborhoods < ActiveRecord::Migration
  def change
    create_table :subneighborhoods do |t|
      t.string :description
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
