# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171210052007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.integer "point_value", default: 100
    t.date "due_date"
    t.integer "class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_assignments_on_class_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name", null: false
    t.integer "instructor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instructor_id"], name: "index_classrooms_on_instructor_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "class_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_enrollments_on_class_id"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_groups_on_class_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
    t.index ["student_id"], name: "index_memberships_on_student_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "completed", default: false
    t.integer "assignment_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_tasks_on_assignment_id"
    t.index ["student_id"], name: "index_tasks_on_student_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.boolean "is_instructor", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "class_id"
    t.integer "group_id"
    t.index ["class_id"], name: "index_users_on_class_id"
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
