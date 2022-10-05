class AddNewTitleToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :new_title, :string
  end
end
