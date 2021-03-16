class RemoveUserFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :user, :integer
  end
end
