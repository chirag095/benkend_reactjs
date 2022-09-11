class AddHighlightColumnToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :highlight_id, :integer
  end
end
