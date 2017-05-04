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

ActiveRecord::Schema.define(version: 20170504202023) do

  create_table "auditorios", force: :cascade do |t|
    t.boolean  "amplificacion"
    t.boolean  "proyector"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "bienestars", force: :cascade do |t|
    t.string   "correo"
    t.string   "contrasena"
    t.string   "identificador"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cepraes", force: :cascade do |t|
    t.string   "correo"
    t.string   "contrasena"
    t.string   "identificador"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "edificios", force: :cascade do |t|
    t.string   "monbre"
    t.integer  "identificador"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lugars", force: :cascade do |t|
    t.integer  "identificador"
    t.integer  "capacidad"
    t.boolean  "estado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.integer  "identificador"
    t.integer  "numUsu"
    t.datetime "fecha"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "salas", force: :cascade do |t|
    t.string   "tipo"
    t.string   "instrumentos"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "salons", force: :cascade do |t|
    t.boolean  "computadores"
    t.boolean  "proyecto"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "rol"
    t.string   "email"
    t.string   "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
