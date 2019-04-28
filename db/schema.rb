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

ActiveRecord::Schema.define(version: 2019_04_28_202312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boloes", force: :cascade do |t|
    t.string "nome"
    t.boolean "ativo", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "escolhas", force: :cascade do |t|
    t.bigint "participacao_id"
    t.bigint "palpite_id"
    t.bigint "opcao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opcao_id"], name: "index_escolhas_on_opcao_id"
    t.index ["palpite_id"], name: "index_escolhas_on_palpite_id"
    t.index ["participacao_id"], name: "index_escolhas_on_participacao_id"
  end

  create_table "opcoes", force: :cascade do |t|
    t.string "valor"
    t.boolean "correta"
    t.bigint "palpite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["palpite_id"], name: "index_opcoes_on_palpite_id"
  end

  create_table "palpites", force: :cascade do |t|
    t.bigint "bolao_id"
    t.string "pergunta"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bolao_id"], name: "index_palpites_on_bolao_id"
  end

  create_table "participacoes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bolao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bolao_id"], name: "index_participacoes_on_bolao_id"
    t.index ["user_id"], name: "index_participacoes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "escolhas", "opcoes"
  add_foreign_key "escolhas", "palpites"
  add_foreign_key "escolhas", "participacoes"
  add_foreign_key "opcoes", "palpites"
  add_foreign_key "palpites", "boloes"
  add_foreign_key "participacoes", "boloes"
  add_foreign_key "participacoes", "users"
end
