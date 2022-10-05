class AddStartPriceToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :start_price, :string
  end
end
