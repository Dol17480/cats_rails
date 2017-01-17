class CreateNaps < ActiveRecord::Migration
  def change
    create_table :naps do |t|
      t.datetime :naptime
      t.references :cat, index: true, foreign_key: true
      t.references :home, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
