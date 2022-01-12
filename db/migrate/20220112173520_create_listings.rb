class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :category
      t.string :subcategory
      t.float :price
      t.string :size
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
