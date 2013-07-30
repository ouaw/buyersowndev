class RenameNeighborhoodInProperties < ActiveRecord::Migration
  def change
  	rename_column :properties, :neighborhood, :neighborhood_id
  end
end
