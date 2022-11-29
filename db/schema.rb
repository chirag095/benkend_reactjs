# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_29_175239) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "amenities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "builders", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "city_locations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "city_ls", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.integer "seo_id"
    t.index ["seo_id"], name: "index_city_ls_on_seo_id"
    t.index ["slug"], name: "index_city_ls_on_slug", unique: true
  end

  create_table "city_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "contact"
    t.string "countery_code"
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_customers_on_project_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "title"
    t.string "carpet_area"
    t.string "price"
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_flats_on_project_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_galleries_on_project_id"
  end

  create_table "highlights", force: :cascade do |t|
    t.text "title"
    t.text "title1"
    t.text "title2"
    t.text "title3"
    t.text "title4"
    t.text "title5"
    t.text "title6"
    t.text "title7"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "city_l_id"
    t.string "slug"
    t.integer "seo_id"
    t.index ["city_l_id"], name: "index_localities_on_city_l_id"
    t.index ["seo_id"], name: "index_localities_on_seo_id"
    t.index ["slug"], name: "index_localities_on_slug", unique: true
  end

  create_table "logos", force: :cascade do |t|
    t.string "Contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "country_code"
    t.string "title"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "project_type"
    t.string "assets_type"
    t.string "project_status"
    t.string "launch_date"
    t.string "possession_date"
    t.string "project_overview"
    t.string "project_features"
    t.string "location_map_content"
    t.string "site_Plan_content"
    t.integer "amenity_id", null: false
    t.integer "builder_id", null: false
    t.integer "locality_id"
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.boolean "status", default: false
    t.integer "seo_id"
    t.integer "city_l_id"
    t.integer "highlight_id"
    t.integer "logo_id"
    t.string "new_title"
    t.string "start_price"
    t.string "image"
    t.index ["amenity_id"], name: "index_projects_on_amenity_id"
    t.index ["builder_id"], name: "index_projects_on_builder_id"
    t.index ["city_l_id"], name: "index_projects_on_city_l_id"
    t.index ["locality_id"], name: "index_projects_on_locality_id"
    t.index ["logo_id"], name: "index_projects_on_logo_id"
    t.index ["seo_id"], name: "index_projects_on_seo_id"
    t.index ["slug"], name: "index_projects_on_slug", unique: true
    t.index ["state_id"], name: "index_projects_on_state_id"
  end

  create_table "seo_tools", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "keyword"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "keyword"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supar_admins", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "city_ls", "seos"
  add_foreign_key "customers", "projects"
  add_foreign_key "flats", "projects"
  add_foreign_key "galleries", "projects"
  add_foreign_key "localities", "city_ls"
  add_foreign_key "localities", "seos"
  add_foreign_key "projects", "amenities"
  add_foreign_key "projects", "builders"
  add_foreign_key "projects", "city_ls"
  add_foreign_key "projects", "localities"
  add_foreign_key "projects", "logos"
  add_foreign_key "projects", "seos"
  add_foreign_key "projects", "states"
  add_foreign_key "sessions", "users"
end
