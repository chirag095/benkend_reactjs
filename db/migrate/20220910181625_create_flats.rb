class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :carpet_area
      t.string :price
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
