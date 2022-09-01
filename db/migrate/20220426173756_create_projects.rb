class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :project_type
      t.string :assets_type
      t.string :project_status
      t.string :launch_date
      t.string :possession_date
      t.string :project_overview
      t.string :project_features
      t.string :location_map_content
      t.string :site_Plan_content
      t.references :city, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true
      t.references :builder, null: false, foreign_key: true
      t.references :city_location, null: false, foreign_key: true
      t.references :locality, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
