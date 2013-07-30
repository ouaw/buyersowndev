class CreateWschoolcatchments < ActiveRecord::Migration
  def change
    create_table :wschoolcatchments do |t|
      t.integer :wish_id
      t.integer :school_id

      t.timestamps
    end
  end
end
