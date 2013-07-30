class RemoveMaxDistanceToFromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :max_distance_to_, :string
  end
end
