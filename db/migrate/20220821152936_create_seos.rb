class CreateSeos < ActiveRecord::Migration[6.1]
  def change
    create_table :seos do |t|
      t.string :title
      t.text :description
      t.string :keyword

      t.timestamps
    end
  end
end
