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

ActiveRecord::Schema.define(version: 20150328170746) do

  create_table "queries", force: true do |t|
    t.string   "query_text"
    t.string   "location_text"
    t.string   "user_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "query_tags", force: true do |t|
    t.integer  "query_id"
    t.integer  "tag_id"
    t.decimal  "relevance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "query_tags", ["query_id"], name: "index_query_tags_on_query_id"
  add_index "query_tags", ["tag_id"], name: "index_query_tags_on_tag_id"

  create_table "requirements", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "result_requirements", force: true do |t|
    t.integer  "result_id"
    t.integer  "requirement_id"
    t.decimal  "year"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "result_requirements", ["requirement_id"], name: "index_result_requirements_on_requirement_id"
  add_index "result_requirements", ["result_id"], name: "index_result_requirements_on_result_id"

  create_table "results", force: true do |t|
    t.string   "title"
    t.string   "summary"
    t.text     "description"
    t.string   "url"
    t.string   "source"
    t.string   "level"
    t.string   "type"
    t.date     "post_date"
    t.date     "exp_date"
    t.string   "education_req"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tag_topics", force: true do |t|
    t.integer  "tag_id"
    t.integer  "topic_id"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tag_topics", ["tag_id"], name: "index_tag_topics_on_tag_id"
  add_index "tag_topics", ["topic_id"], name: "index_tag_topics_on_topic_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_results", force: true do |t|
    t.integer  "topic_id"
    t.integer  "result_id"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_results", ["result_id"], name: "index_topic_results_on_result_id"
  add_index "topic_results", ["topic_id"], name: "index_topic_results_on_topic_id"

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
