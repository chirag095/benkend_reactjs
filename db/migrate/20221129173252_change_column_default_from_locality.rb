class ChangeColumnDefaultFromLocality < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:localities, :seo_id,true)
  end
end
