class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :size_rating
      t.integer :quality_rating
      t.text :review_description
      t.references :seller, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
