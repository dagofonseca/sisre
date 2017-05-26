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

ActiveRecord::Schema.define(version: 20170523213857) do

  create_table "administradors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "edificios", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "identificador"
    t.integer  "numeroDeBanos"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "espacios", force: :cascade do |t|
    t.integer  "numero"
    t.integer  "capacidad"
    t.boolean  "disponibilidad"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "solicituds", force: :cascade do |t|
    t.string   "nombredelevento"
    t.integer  "numeroDeAsistentes"
    t.text     "descripcion"
    t.string   "estado"
    t.boolean  "computadores"
    t.boolean  "videoBeam"
    t.text     "comentarios"
    t.date     "expedicion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "usuario_sia"
    t.string   "clave"
    t.string   "vinculacion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
