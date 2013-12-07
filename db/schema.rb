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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131123222611) do

  create_table "clientes", :force => true do |t|
    t.string   "cliente"
    t.string   "cuit"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "telefono3"
    t.string   "email1"
    t.string   "email2"
    t.date     "fecha_inicio"
    t.string   "clave_fiscal"
    t.string   "clave_muni"
    t.string   "domicilio1"
    t.string   "domicilio2"
    t.text     "notas"
    t.string   "iibb_cm"
    t.integer  "cant_adherentes"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "clientes_impuestos", :force => true do |t|
    t.decimal  "importe",     :precision => 8, :scale => 2
    t.boolean  "recibe_mail"
    t.integer  "cliente_id"
    t.integer  "impuesto_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "clientes_impuestos", ["cliente_id"], :name => "index_clientes_impuestos_on_cliente_id"
  add_index "clientes_impuestos", ["impuesto_id"], :name => "index_clientes_impuestos_on_impuesto_id"

  create_table "historico_impuestos", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "impuestos_periodo_id"
    t.integer  "recibo_id"
    t.boolean  "cliente_avisado"
    t.date     "vencimiento"
    t.date     "fecha_pago"
    t.decimal  "importe",              :precision => 8, :scale => 2
    t.text     "notas"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  add_index "historico_impuestos", ["cliente_id"], :name => "index_historico_impuestos_on_cliente_id"
  add_index "historico_impuestos", ["impuestos_periodo_id"], :name => "index_historico_impuestos_on_impuestos_periodo_id"
  add_index "historico_impuestos", ["recibo_id"], :name => "index_historico_impuestos_on_recibo_id"

  create_table "impuestos", :force => true do |t|
    t.string   "impuesto"
    t.decimal  "importe",              :precision => 8, :scale => 2
    t.boolean  "cm"
    t.date     "default_vencimiento0"
    t.date     "default_vencimiento1"
    t.date     "default_vencimiento2"
    t.date     "default_vencimiento3"
    t.date     "default_vencimiento4"
    t.date     "default_vencimiento5"
    t.date     "default_vencimiento6"
    t.date     "default_vencimiento7"
    t.date     "default_vencimiento8"
    t.date     "default_vencimiento9"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "impuestos_periodos", :force => true do |t|
    t.integer  "periodo_id"
    t.integer  "impuesto_id"
    t.date     "vencimiento0"
    t.date     "vencimiento1"
    t.date     "vencimiento2"
    t.date     "vencimiento3"
    t.date     "vencimiento4"
    t.date     "vencimiento5"
    t.date     "vencimiento6"
    t.date     "vencimiento7"
    t.date     "vencimiento8"
    t.date     "vencimiento9"
    t.decimal  "importe",      :precision => 8, :scale => 2
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "impuestos_periodos", ["impuesto_id"], :name => "index_impuestos_periodos_on_impuesto_id"
  add_index "impuestos_periodos", ["periodo_id"], :name => "index_impuestos_periodos_on_periodo_id"

  create_table "periodos", :force => true do |t|
    t.date     "inicio"
    t.date     "fin"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "recibos", :force => true do |t|
    t.string   "concepto"
    t.decimal  "otros_importes", :precision => 8, :scale => 2
    t.text     "notas"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

end
