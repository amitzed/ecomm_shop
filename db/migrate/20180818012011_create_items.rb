class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :product
      t.text :description
      t.string :condition
      t.string :origin
      t.string :title
      t.decimal :price, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
