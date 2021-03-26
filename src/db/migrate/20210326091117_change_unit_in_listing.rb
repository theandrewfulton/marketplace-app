class ChangeUnitInListing < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :unit, :integer, default: 0
  end
end
