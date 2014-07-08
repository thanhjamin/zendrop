class AddLicenseColumnToSpreeUsers < ActiveRecord::Migration
  def self.up
    add_attachment :spree_users, :driver_license
  end

  def self.down
    remove_attachment :spree_users, :driver_license
  end
end
