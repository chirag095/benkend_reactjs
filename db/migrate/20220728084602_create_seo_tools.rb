class CreateSeoTools < ActiveRecord::Migration[6.1]
  def change
    create_table :seo_tools do |t|
      t.string :title
      t.string :description
      t.string :keyword

      t.timestamps
    end
  end
end
