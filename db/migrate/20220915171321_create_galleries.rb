class CreateGalleries < ActiveRecord::Migration[6.1]
  def change
    create_table :galleries do |t|
      t.string :image
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :image6
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
