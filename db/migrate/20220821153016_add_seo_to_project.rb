class AddSeoToProject < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :seo, null: true, foreign_key: true
  end
end
