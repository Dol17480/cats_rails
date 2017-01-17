class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end
