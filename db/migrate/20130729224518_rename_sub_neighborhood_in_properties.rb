class RenameSubNeighborhoodInProperties < ActiveRecord::Migration
  def change
  	rename_column :properties, :sub_neighborhood, :subneighborhood_id
  end
end
