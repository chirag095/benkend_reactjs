class AddSeoToCityL < ActiveRecord::Migration[6.1]
  def change
    add_reference :city_ls, :seo, null: true, foreign_key: true
  end
end
