class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :made-in
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
