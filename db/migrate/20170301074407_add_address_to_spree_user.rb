class AddAddressToSpreeUser < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_users, :address, :text
  end
end
