ActiveAdmin.register Product do

  form(:html => { :multipart => true }) do |f|
    f.inputs "Product" do
      f.input :category
      f.input :name
      f.input :price
      f.input :image, :as => :file
      f.input :thc_content
      f.input :description
      f.input :medical_description
    end
    f.actions
  end
end
