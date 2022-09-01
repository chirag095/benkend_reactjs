class AddImageToAmenity < ActiveRecord::Migration[6.1]
  def change
    add_column :amenities, :image, :string
  end
end
