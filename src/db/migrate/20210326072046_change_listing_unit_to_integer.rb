class ChangeListingUnitToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :unit, :integer, using: 'unit::integer'
  end
end
