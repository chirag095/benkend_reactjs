class RemoveImageFromAmenity < ActiveRecord::Migration[6.1]
  def change
    remove_column :amenities, :image, :string
  end
end
