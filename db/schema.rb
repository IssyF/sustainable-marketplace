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

ActiveRecord::Schema.define(version: 2022_02_16_174121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "buyers", force: :cascade do |t|
    t.text "address"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_buyers_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "subcategory"
    t.float "price"
    t.string "size"
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description", null: false
    t.boolean "in_basket", default: false
    t.index ["seller_id"], name: "index_listings_on_seller_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "size_rating"
    t.integer "quality_rating"
    t.text "review_description"
    t.bigint "seller_id", null: false
    t.bigint "sale_id", null: false
    t.bigint "buyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_reviews_on_buyer_id"
    t.index ["sale_id"], name: "index_reviews_on_sale_id"
    t.index ["seller_id"], name: "index_reviews_on_seller_id"
  end

  create_table "sales", force: :cascade do |t|
    t.text "shipping_address"
    t.bigint "listing_id", null: false
    t.bigint "buyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_sales_on_buyer_id"
    t.index ["listing_id"], name: "index_sales_on_listing_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "shop_name"
    t.text "shop_description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "sustainability_practices", force: :cascade do |t|
    t.boolean "human_welfare"
    t.boolean "materials"
    t.boolean "local"
    t.boolean "packaging"
    t.boolean "energy_neutral"
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seller_id"], name: "index_sustainability_practices_on_seller_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "buyers", "users"
  add_foreign_key "listings", "sellers"
  add_foreign_key "reviews", "buyers"
  add_foreign_key "reviews", "sales"
  add_foreign_key "reviews", "sellers"
  add_foreign_key "sales", "buyers"
  add_foreign_key "sales", "listings"
  add_foreign_key "sellers", "users"
  add_foreign_key "sustainability_practices", "sellers"
end
