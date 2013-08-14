# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130814223441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assem_tasks", force: true do |t|
    t.integer  "subassembly_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assem_tasks_machines", force: true do |t|
    t.integer  "assem_task_id"
    t.integer  "machine_id"
    t.boolean  "complete",      default: false
    t.datetime "completed"
  end

  create_table "assembly_projects", force: true do |t|
    t.integer  "machine_id"
    t.date     "begin_date"
    t.date     "end_date"
    t.boolean  "complete",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machines", force: true do |t|
    t.integer  "serial_num"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subassemblies", force: true do |t|
    t.string   "name"
    t.integer  "stage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
