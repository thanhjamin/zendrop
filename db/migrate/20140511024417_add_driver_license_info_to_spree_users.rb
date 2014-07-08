class AddDriverLicenseInfoToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :driver_license_number, :string
    add_column :spree_users, :driver_license_expiration, :date
  end
end
