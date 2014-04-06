ActiveAdmin.register Product do

  form do |f|
    f.inputs "Product" do
      f.input :category
      f.input :name
      f.input :price
      f.input :image, :as => :file
      f.input :thc_content
    end
    f.actions
  end
end
