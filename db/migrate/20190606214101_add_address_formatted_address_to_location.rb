class AddAddressFormattedAddressToLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :address_formatted_address, :string
  end
end
