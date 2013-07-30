class AddSubtypeToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :subtype, :string
  end
end
