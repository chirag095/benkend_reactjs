class ChangeLocalityFromProject < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:projects, :locality_id,true)
  end
end
