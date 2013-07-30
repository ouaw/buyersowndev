class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :type
      t.float :score
      t.integer :rank

      t.timestamps
    end
  end
end
