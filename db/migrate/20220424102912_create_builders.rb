class CreateBuilders < ActiveRecord::Migration[6.1]
  def change
    create_table :builders do |t|
      t.string :title

      t.timestamps
    end
  end
end
