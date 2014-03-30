class AddSignUpRequirements < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
    add_column :users, :doctor_name, :string
    add_column :users, :patient_id, :string
    add_column :users, :name_of_clinic, :string
    add_column :users, :medical_documentation, :string
    add_column :users, :proof_of_identity, :string
    add_column :users, :address, :string
  end
end
