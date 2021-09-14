class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :price
      t.string :location
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
