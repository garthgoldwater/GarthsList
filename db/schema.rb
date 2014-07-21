
ActiveRecord::Schema.define(version: 20140721164853) do
  enable_extension "plpgsql"
  create_table "categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  add_index "categories", ["name"], name: "index_categories_on_name", using: :btree
  create_table "posts", force: true do |t|
    t.string   "title",       null: false
    t.text     "body",        null: false
    t.integer  "price"
    t.integer  "region_id",   null: false
    t.integer  "category_id", null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end
  add_index "posts", ["body"], name: "index_posts_on_body", using: :btree
  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["price"], name: "index_posts_on_price", using: :btree
  add_index "posts", ["region_id"], name: "index_posts_on_region_id", using: :btree
  add_index "posts", ["title"], name: "index_posts_on_title", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree
  create_table "regions", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
  add_index "regions", ["name"], name: "index_regions_on_name", using: :btree
  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end
end
