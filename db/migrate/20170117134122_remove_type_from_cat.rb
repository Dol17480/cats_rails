class RemoveTypeFromCat < ActiveRecord::Migration
  def change
    remove_column :cats, :type
  end
end
