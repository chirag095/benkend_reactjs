class RemoveImage1FromGallery < ActiveRecord::Migration[6.1]
  def change
    remove_column :galleries, :image, :string
  end
end
