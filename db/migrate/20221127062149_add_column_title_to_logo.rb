class AddColumnTitleToLogo < ActiveRecord::Migration[6.1]
  def change
    add_column :logos, :title, :string
  end
end
