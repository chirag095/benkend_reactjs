class CreateCityLs < ActiveRecord::Migration[6.1]
  def change
    create_table :city_ls do |t|
      t.string :title

      t.timestamps
    end
  end
end
