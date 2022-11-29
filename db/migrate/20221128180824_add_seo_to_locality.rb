class AddSeoToLocality < ActiveRecord::Migration[6.1]
  def change
    add_reference :localities, :seo, null: false, foreign_key: true
  end
end
