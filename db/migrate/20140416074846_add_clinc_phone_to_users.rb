class AddClincPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :clinic_phone, :integer
  end
end
