class RemoveWorkAddress1FromWishes < ActiveRecord::Migration
  def change
    remove_column :wishes, :work_address_1, :string
  end
end
