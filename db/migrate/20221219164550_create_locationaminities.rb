class CreateLocationaminities < ActiveRecord::Migration[6.1]
  def change
    create_table :locationaminities do |t|
      t.string :title
      t.string :dec1
      t.string :dec2
      t.string :dec3
      t.string :dec4
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
