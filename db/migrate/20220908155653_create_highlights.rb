class CreateHighlights < ActiveRecord::Migration[6.1]
  def change
    create_table :highlights do |t|
      t.text :title
      t.text :title1
      t.text :title2
      t.text :title3
      t.text :title4
      t.text :title5
      t.text :title6
      t.text :title7

      t.timestamps
    end
  end
end
