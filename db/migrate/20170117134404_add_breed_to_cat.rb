class AddBreedToCat < ActiveRecord::Migration
  def change
    add_column :cats, :breed, :string
  end
end
