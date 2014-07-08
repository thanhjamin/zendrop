class AddMedicalToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :doctor_name, :string
    add_column :spree_users, :clinic_name, :string
    add_column :spree_users, :patient_id, :string
    add_column :spree_users, :clinic_phone, :integer
    add_column :spree_users, :medical_recommedation_image, :string
    add_column :spree_users, :driver_license_image, :string
  end
end
