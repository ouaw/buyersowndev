class RemoveNeighborhoodIdFromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :neighborhood_id, :integer
  end
end
