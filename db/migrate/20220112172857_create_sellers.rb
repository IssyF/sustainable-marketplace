class CreateSellers < ActiveRecord::Migration[6.1]
  def change
    create_table :sellers do |t|
      t.string :shop_name
      t.text :shop_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
