class AddNeighborhoodIdToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :neighborhood_id, :integer
  end
end
