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

ActiveRecord::Schema.define(:version => 20120726024851) do

  create_table "admin_conteudo_translations", :force => true do |t|
    t.integer  "admin_conteudo_id"
    t.string   "locale"
    t.string   "titulo"
    t.string   "texto_curto"
    t.text     "texto_longo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "admin_conteudo_translations", ["admin_conteudo_id"], :name => "index_c927a539e940d9349c7f22ff60d723a06bde46b3"
  add_index "admin_conteudo_translations", ["locale"], :name => "index_admin_conteudo_translations_on_locale"

  create_table "admin_conteudos", :force => true do |t|
    t.string   "menu"
    t.string   "titulo"
    t.string   "texto_curto"
    t.text     "texto_longo"
    t.string   "link"
    t.string   "iframe"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "localizacao"
    t.datetime "imagem_updated_at"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.string   "imagem_file_name"
  end

  create_table "admin_menu", :force => true do |t|
    t.string "menu"
  end

  create_table "admin_menu_translations", :force => true do |t|
    t.integer  "admin_menu_id"
    t.string   "locale"
    t.string   "menu"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "admin_menu_translations", ["admin_menu_id"], :name => "index_admin_menu_translations_on_admin_menu_id"
  add_index "admin_menu_translations", ["locale"], :name => "index_admin_menu_translations_on_locale"

  create_table "admin_menus", :force => true do |t|
    t.string "menu"
  end

  create_table "admin_users", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "conteudos", :force => true do |t|
    t.string   "menu"
    t.string   "pagina"
    t.string   "titulo"
    t.string   "textoCurto"
    t.string   "textoLongo"
    t.string   "link"
    t.string   "iframe"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "localizacao"
    t.datetime "imagem_updated_at"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.string   "imagem_file_name"
  end

end
