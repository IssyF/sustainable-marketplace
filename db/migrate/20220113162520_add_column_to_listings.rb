class AddColumnToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :in_basket, :boolean, default: false
  end
end
