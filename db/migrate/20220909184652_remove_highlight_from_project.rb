class RemoveHighlightFromProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :highlights_id, :integer
  end
end
