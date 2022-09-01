class RemoveCityIdFromProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :city_id, :integer
  end
end
