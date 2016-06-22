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

ActiveRecord::Schema.define(version: 20160616225304) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.date     "nac"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "proys", force: :cascade do |t|
    t.string   "nombre_proy", limit: 255
    t.integer  "horas",       limit: 4
    t.integer  "Alumno_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "proys", ["Alumno_id"], name: "index_proys_on_Alumno_id", using: :btree

  add_foreign_key "proys", "alumnos", column: "Alumno_id"
end
