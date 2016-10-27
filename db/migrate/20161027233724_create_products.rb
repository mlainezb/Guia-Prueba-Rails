class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.name :name
      t.integer :price
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
