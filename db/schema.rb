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

ActiveRecord::Schema.define(version: 20140721162955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"



  create_table "actividades", force: true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.string   "status"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "actividadpadre_id"
    t.integer  "actividad_id"
    t.string   "slug"
    t.string   "namefb"
    t.string   "namegoogle"
  end

  add_index "actividades", ["slug"], name: "index_actividades_on_slug", using: :btree


  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "eventos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "fecha"
    t.string   "photo"
    t.string   "urloficial"
    t.string   "artista"
    t.string   "entradatipo"
    t.string   "precio"
    t.integer  "votos"
    t.string   "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug"
    t.string   "diaevento"
    t.string   "estado"
    t.string   "poblacion"
    t.integer  "principal"
    t.integer  "fechainicio"
    t.integer  "fechafin"
    t.integer  "mes"
    t.integer  "dia"
    t.integer  "actividad"
    t.string   "fotografia"
    t.integer  "institucion"
    t.integer  "user_id"
    t.integer  "estado_id"
    t.integer  "actividad_id"
    t.string   "referencefb"
    t.string   "name"
  end

  add_index "eventos", ["slug"], name: "index_eventos_on_slug", using: :btree

  create_table "imagenes", force: true do |t|
    t.string   "slug"
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.integer  "evento_id"
    t.integer  "actividad_id"
  end

  add_index "imagenes", ["slug"], name: "index_imagenes_on_slug", using: :btree


  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "coordenadas"
    t.integer  "receiver_id"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "micrositios", force: true do |t|
    t.string   "name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug"
    t.integer  "created_by"
    t.integer  "ordering"
    t.text     "metakey"
    t.integer  "hits"
    t.text     "imagen"
    t.text     "lugar"
    t.text     "munciudad"
    t.text     "mapa"
    t.text     "comollegar"
    t.integer  "votos"
    t.string   "fb_author"
    t.string   "tagcategorias"
    t.integer  "user_id"
    t.text     "descripcion"
    t.integer  "status"
    t.datetime "created"
    t.datetime "publish_up"
    t.text     "urls"
    t.integer  "favorito"
    t.integer  "actividad_id"
    t.text     "reference"
    t.text     "lat"
    t.text     "lng"
    t.string   "referencefb"
  end

  add_index "micrositios", ["slug"], name: "index_micrositios_on_slug", using: :btree


  create_table "relationeventos", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationeventos", ["followed_id"], name: "index_relationeventos_on_followed_id", using: :btree
  add_index "relationeventos", ["follower_id", "followed_id"], name: "index_relationeventos_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationeventos", ["follower_id"], name: "index_relationeventos_on_follower_id", using: :btree

  create_table "relationmicrositios", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationmicrositios", ["followed_id"], name: "index_relationmicrositios_on_followed_id", using: :btree
  add_index "relationmicrositios", ["follower_id", "followed_id"], name: "index_relationmicrositios_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationmicrositios", ["follower_id"], name: "index_relationmicrositios_on_follower_id", using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree



  create_table "reservations", force: true do |t|
    t.date     "date"
    t.datetime "hour"
    t.integer  "number"
    t.text     "personsnumber"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "slug"
    t.string   "username"
    t.string   "password"
    t.string   "usertype"
    t.integer  "block"
    t.integer  "sendEmail"
    t.integer  "gid"
    t.datetime "registerDate"
    t.datetime "lastvisitDate"
    t.string   "activation"
    t.text     "params"
    t.string   "fb_author"
    t.text     "ntlparam"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "avatar"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "lat"
    t.text     "lng"
    t.boolean  "editor"
    t.string   "editor_estado"
    t.string   "estado_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
