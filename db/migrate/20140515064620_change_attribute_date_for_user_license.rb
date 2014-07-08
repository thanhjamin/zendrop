class ChangeAttributeDateForUserLicense < ActiveRecord::Migration
  def change
    remove_column :spree_users, :driver_license_expiration, :date
    add_column :spree_users, :driver_license_expiration, :string
  end
end
