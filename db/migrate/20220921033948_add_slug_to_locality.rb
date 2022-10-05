class AddSlugToLocality < ActiveRecord::Migration[6.1]
  def change
    add_column :localities, :slug, :string
    add_index :localities, :slug, unique: true
  end
end
