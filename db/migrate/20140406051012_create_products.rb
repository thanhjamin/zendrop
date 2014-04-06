class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :category_id
      t.string :image
      t.integer :thc_content

      t.timestamps
    end
  end
end
