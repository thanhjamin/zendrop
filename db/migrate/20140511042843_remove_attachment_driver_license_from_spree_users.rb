class RemoveAttachmentDriverLicenseFromSpreeUsers < ActiveRecord::Migration
  def change
    remove_attachment :spree_users, :driver_license
  end
end
