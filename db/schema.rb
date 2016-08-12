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

ActiveRecord::Schema.define(version: 20160810165034) do

  create_table "cloud_marcos", force: :cascade do |t|
    t.string   "provedor",      limit: 255
    t.string   "descripcion",   limit: 255
    t.string   "tipo",          limit: 255
    t.string   "gasto_ingreso", limit: 255
    t.string   "producto",      limit: 255
    t.string   "num_contrato",  limit: 255
    t.string   "catalogado",    limit: 255
    t.string   "saldo",         limit: 255
    t.string   "moneda",        limit: 255
    t.string   "vigencia",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cloud_perfils", force: :cascade do |t|
    t.string   "fabricante",          limit: 255
    t.string   "nombre",              limit: 255
    t.string   "certificacion",       limit: 255
    t.string   "tecnologia",          limit: 255
    t.string   "concepto",            limit: 255
    t.string   "periodo_realizacion", limit: 255
    t.string   "fecha_vencimiento",   limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "cloud_tdps", force: :cascade do |t|
    t.string   "cliente",             limit: 255
    t.string   "descripcion",         limit: 255
    t.string   "licitaciones",        limit: 255
    t.string   "pre_venta",           limit: 255
    t.string   "jefe_proyecto",       limit: 255
    t.string   "monto_inc_igv",       limit: 255
    t.string   "contrato",            limit: 255
    t.string   "conformidad",         limit: 255
    t.string   "ote",                 limit: 255
    t.string   "plantilla_economica", limit: 255
    t.string   "observacion",         limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "cloudsses", force: :cascade do |t|
    t.string   "cliente",             limit: 255
    t.string   "descripcion",         limit: 255
    t.string   "licitaciones",        limit: 255
    t.string   "pre_venta",           limit: 255
    t.string   "jefe_proyecto",       limit: 255
    t.string   "monto_in_igv",        limit: 255
    t.string   "contrato",            limit: 255
    t.string   "conformidad",         limit: 255
    t.string   "ote",                 limit: 255
    t.string   "plantilla_economica", limit: 255
    t.string   "observacion",         limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
