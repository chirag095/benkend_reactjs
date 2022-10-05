class AddSlugToCityL < ActiveRecord::Migration[6.1]
  def change
    add_column :city_ls, :slug, :string
    add_index :city_ls, :slug, unique: true
  end
end
