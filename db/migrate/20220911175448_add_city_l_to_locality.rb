class AddCityLToLocality < ActiveRecord::Migration[6.1]
  def change
    add_reference :localities, :city_l, null: true, foreign_key: true
  end
end
