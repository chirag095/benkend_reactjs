class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :countery_code
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
