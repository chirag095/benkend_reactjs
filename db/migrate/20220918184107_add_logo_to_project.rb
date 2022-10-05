class AddLogoToProject < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :logo, null: true, foreign_key: true
  end
end
