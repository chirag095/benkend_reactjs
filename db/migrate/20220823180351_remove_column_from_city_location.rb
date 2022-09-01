class RemoveColumnFromCityLocation < ActiveRecord::Migration[6.1]
  def change
    remove_column :city_locations, :image, :string
  end
end
