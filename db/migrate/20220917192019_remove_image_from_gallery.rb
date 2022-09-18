class RemoveImageFromGallery < ActiveRecord::Migration[6.1]
  def change
    remove_column :galleries, :image1, :string
    remove_column :galleries, :image2, :string
    remove_column :galleries, :image3, :string
    remove_column :galleries, :image4, :string
    remove_column :galleries, :image5, :string
    remove_column :galleries, :image6, :string
  end
end
