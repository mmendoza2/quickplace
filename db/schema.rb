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

  create_table "actimicros", force: :cascade do |t|
    t.integer "actividad_id"
    t.integer "micrositio_id"
  end

  create_table "actividades", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "descripcion",        limit: 255
    t.string   "status",             limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "actividadpadre_id"
    t.integer  "actividad_id"
    t.string   "slug",               limit: 255
    t.string   "namefb",             limit: 255
    t.string   "namegoogle",         limit: 255
    t.integer  "loc_id"
  end

  add_index "actividades", ["slug"], name: "index_actividades_on_slug", using: :btree

  create_table "actividadespadre", force: :cascade do |t|
    t.integer  "tagid"
    t.integer  "catid"
    t.string   "descripcion",        limit: 255
    t.string   "slug",               limit: 255
    t.string   "icono",              limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "status"
    t.string   "actividadpadre",     limit: 255
  end

  add_index "actividadespadre", ["slug"], name: "index_actividadespadre_on_slug", using: :btree

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "slug",               limit: 255
    t.string   "name",               limit: 255
    t.string   "imagen",             limit: 255
    t.string   "icono",              limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  add_index "categorias", ["slug"], name: "index_categorias_on_slug", using: :btree

  create_table "estados", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "estado",             limit: 255
    t.string   "slug",               limit: 255
    t.string   "poblacion",          limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.text     "descripcion"
  end

  add_index "estados", ["slug"], name: "index_estados_on_slug", using: :btree

  create_table "eventos", force: :cascade do |t|
    t.integer  "uid",                limit: 8
    t.string   "name",               limit: 255
    t.text     "description"
    t.datetime "fecha"
    t.string   "urloficial",         limit: 255
    t.string   "artista",            limit: 255
    t.string   "entradatipo",        limit: 255
    t.string   "precio",             limit: 255
    t.string   "ranking",            limit: 255
    t.integer  "hits"
    t.text     "imagen"
    t.text     "lugar"
    t.text     "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug",               limit: 255
    t.integer  "fechainicio"
    t.integer  "fechafin"
    t.integer  "mes"
    t.integer  "dia"
    t.integer  "actividad"
    t.string   "fotografia",         limit: 255
    t.integer  "user_id"
    t.integer  "estado_id",          limit: 8
    t.integer  "micrositio_id",      limit: 8
    t.integer  "actividad_id",       limit: 8
    t.text     "location"
    t.text     "reference"
    t.text     "lat"
    t.text     "lng"
    t.string   "referencefb",        limit: 255
  end

  add_index "eventos", ["slug"], name: "index_eventos_on_slug", using: :btree

  create_table "imagenes", force: :cascade do |t|
    t.string   "slug",               limit: 255
    t.string   "name",               limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.integer  "evento_id"
    t.integer  "actividad_id"
  end

  add_index "imagenes", ["slug"], name: "index_imagenes_on_slug", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "slug",         limit: 255
    t.string   "name",         limit: 255
    t.string   "address",      limit: 255
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.string   "state_code",   limit: 255
    t.string   "postal_code",  limit: 255
    t.string   "country",      limit: 255
    t.string   "country_code", limit: 255
    t.string   "distance",     limit: 255
    t.integer  "actividad_id"
    t.integer  "lat"
    t.integer  "lng"
    t.integer  "loc_id"
  end

  add_index "locations", ["slug"], name: "index_locations_on_slug", using: :btree

  create_table "locs", force: :cascade do |t|
    t.string   "slug",          limit: 255
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.integer  "actividad_id"
    t.integer  "micrositio_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "state_code",    limit: 255
    t.string   "postal_code",   limit: 255
    t.string   "country",       limit: 255
    t.string   "country_code",  limit: 255
    t.integer  "lat"
    t.integer  "lng"
  end

  add_index "locs", ["slug"], name: "index_locs_on_slug", using: :btree

  create_table "mensajes", force: :cascade do |t|
    t.integer  "sender"
    t.integer  "receiver"
    t.integer  "long"
    t.integer  "lat"
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.string   "photo_file_size",    limit: 255
    t.datetime "photo_updated_at"
    t.string   "slug",               limit: 255
    t.text     "mapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: :cascade do |t|
    t.string   "content",     limit: 255
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "coordenadas"
    t.integer  "receiver_id"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "micrositios", force: :cascade do |t|
    t.integer  "uid",                limit: 8
    t.string   "name",               limit: 255
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.string   "photo_file_size",    limit: 255
    t.datetime "photo_updated_at"
    t.string   "slug",               limit: 255
    t.integer  "created_by"
    t.integer  "ordering"
    t.text     "metakey"
    t.integer  "hits"
    t.text     "imagen"
    t.text     "lugar"
    t.text     "city"
    t.text     "mapa"
    t.text     "comollegar"
    t.integer  "votos"
    t.integer  "location_id"
    t.string   "fb_author",          limit: 255
    t.string   "tagcategorias",      limit: 255
    t.integer  "user_id"
    t.text     "description"
    t.integer  "status"
    t.datetime "created"
    t.datetime "publish_up"
    t.text     "urls"
    t.integer  "favorito"
    t.integer  "actividad_id"
    t.text     "reference"
    t.text     "lat"
    t.text     "lng"
    t.string   "referencefb",        limit: 255
  end

  add_index "micrositios", ["slug"], name: "index_micrositios_on_slug", using: :btree

  create_table "relationactividades", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationactividades", ["followed_id"], name: "index_relationactividades_on_followed_id", using: :btree
  add_index "relationactividades", ["follower_id", "followed_id"], name: "index_relationactividades_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationactividades", ["follower_id"], name: "index_relationactividades_on_follower_id", using: :btree

  create_table "relationactividadespadre", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationactividadespadre", ["followed_id"], name: "index_relationactividadespadre_on_followed_id", using: :btree
  add_index "relationactividadespadre", ["follower_id", "followed_id"], name: "index_relationactividadespadre_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationactividadespadre", ["follower_id"], name: "index_relationactividadespadre_on_follower_id", using: :btree

  create_table "relationcategorias", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationcategorias", ["followed_id"], name: "index_relationcategorias_on_followed_id", using: :btree
  add_index "relationcategorias", ["follower_id", "followed_id"], name: "index_relationcategorias_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationcategorias", ["follower_id"], name: "index_relationcategorias_on_follower_id", using: :btree

  create_table "relationestados", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationestados", ["followed_id"], name: "index_relationestados_on_followed_id", using: :btree
  add_index "relationestados", ["follower_id", "followed_id"], name: "index_relationestados_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationestados", ["follower_id"], name: "index_relationestados_on_follower_id", using: :btree

  create_table "relationeventos", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationeventos", ["followed_id"], name: "index_relationeventos_on_followed_id", using: :btree
  add_index "relationeventos", ["follower_id", "followed_id"], name: "index_relationeventos_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationeventos", ["follower_id"], name: "index_relationeventos_on_follower_id", using: :btree

  create_table "relationmicrositios", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationmicrositios", ["followed_id"], name: "index_relationmicrositios_on_followed_id", using: :btree
  add_index "relationmicrositios", ["follower_id", "followed_id"], name: "index_relationmicrositios_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationmicrositios", ["follower_id"], name: "index_relationmicrositios_on_follower_id", using: :btree

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "reserervations", force: :cascade do |t|
    t.date     "date"
    t.datetime "hour"
    t.integer  "number"
    t.text     "personsnumber"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "date"
    t.datetime "hour"
    t.integer  "number"
    t.text     "personsnumber"
    t.integer  "user_id"
    t.integer  "micrositio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_suggestionns", force: :cascade do |t|
    t.string   "term",       limit: 255
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_suggestions", force: :cascade do |t|
    t.string   "term",       limit: 255
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",        limit: 255
    t.string   "remember_token",         limit: 255
    t.boolean  "admin"
    t.string   "slug",                   limit: 255
    t.string   "username",               limit: 255
    t.string   "password",               limit: 255
    t.string   "usertype",               limit: 255
    t.integer  "block"
    t.integer  "sendEmail"
    t.integer  "gid"
    t.datetime "registerDate"
    t.datetime "lastvisitDate"
    t.string   "activation",             limit: 255
    t.text     "params"
    t.string   "fb_author",              limit: 255
    t.text     "ntlparam"
    t.string   "uid",                    limit: 255
    t.string   "provider",               limit: 255
    t.string   "oauth_token",            limit: 255
    t.datetime "oauth_expires_at"
    t.string   "avatar",                 limit: 255
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "photo_file_name",        limit: 255
    t.string   "photo_content_type",     limit: 255
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "lat"
    t.text     "lng"
    t.boolean  "editor"
    t.string   "editor_estado",          limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
