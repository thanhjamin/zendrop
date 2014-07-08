class AddPhotoColumnsToSpreeUsers < ActiveRecord::Migration
  def self.up
    add_attachment :spree_users, :photo
  end

  def self.down
    remove_attachment :spree_users, :photo
  end

end
