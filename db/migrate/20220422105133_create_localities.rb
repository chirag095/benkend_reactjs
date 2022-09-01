class CreateLocalities < ActiveRecord::Migration[6.1]
  def change
    create_table :localities do |t|
      t.string :title

      t.timestamps
    end
  end
end
