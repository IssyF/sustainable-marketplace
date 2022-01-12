class AddDescriptionToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :description, :text, null: false
  end
end
