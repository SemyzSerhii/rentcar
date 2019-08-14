# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_14_080332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "color"
    t.string "fuel_type"
    t.string "age"
    t.float "engine"
    t.boolean "enum_status"
    t.bigint "salon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "brand"
    t.string "model"
    t.index ["salon_id"], name: "index_cars_on_salon_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "images", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "cars_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customers_id"
    t.index ["cars_id"], name: "index_orders_on_cars_id"
    t.index ["customers_id"], name: "index_orders_on_customers_id"
  end

  create_table "salons", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.bigint "car_id"
    t.index ["car_id"], name: "index_salons_on_car_id"
  end

  add_foreign_key "cars", "salons"
  add_foreign_key "orders", "cars", column: "cars_id"
  add_foreign_key "orders", "customers", column: "customers_id"
  add_foreign_key "salons", "cars"
end
