class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.text :description
      t.float :price
      t.string :unit
      t.integer :quantity_total
      t.integer :quantity_available
      t.integer :user
      t.float :rating
      t.integer :reviews
      t.boolean :sold

      t.timestamps
    end
  end
end
