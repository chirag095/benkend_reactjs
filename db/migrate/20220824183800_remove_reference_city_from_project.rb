class RemoveReferenceCityFromProject < ActiveRecord::Migration[6.1]
  def change
    remove_reference :projects, :city_location, null: false, foreign_key: true
  end
end
