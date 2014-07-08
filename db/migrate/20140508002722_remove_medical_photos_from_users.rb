class RemoveMedicalPhotosFromUsers < ActiveRecord::Migration
  def change
    remove_column :spree_users, :driver_license_image
    remove_column :spree_users, :medical_recommedation_image
  end
end
