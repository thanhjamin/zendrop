class AddDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :string
    add_column :products, :medical_description, :string
  end
end
