class AddImageToCityLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :city_locations, :image, :string
  end
end
