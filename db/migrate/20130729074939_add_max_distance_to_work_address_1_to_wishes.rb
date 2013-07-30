class AddMaxDistanceToWorkAddress1ToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :max_distance_to_work_address_1, :integer
  end
end
