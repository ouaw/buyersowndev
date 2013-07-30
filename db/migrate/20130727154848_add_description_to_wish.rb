class AddDescriptionToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :description, :string
  end
end
