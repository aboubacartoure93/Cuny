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

ActiveRecord::Schema.define(version: 20190122012413) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "price"
    t.boolean "avaibility"
    t.string "email"
    t.string "isbn"
    t.string "description"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.string "condition"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "electronics_computers", force: :cascade do |t|
    t.string "electronicsTitle"
    t.integer "electronicsPrice"
    t.boolean "availableNow"
    t.integer "student_id"
    t.text "electronisDescription"
    t.string "electronicsLocation"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "electronicsphoto_file_name"
    t.string "electronicsphoto_content_type"
    t.integer "electronicsphoto_file_size"
    t.datetime "electronicsphoto_updated_at"
  end

  create_table "housings", force: :cascade do |t|
    t.string "rentalType"
    t.integer "numberofBedrooms"
    t.integer "numberofBathrooms"
    t.integer "housePrice"
    t.datetime "availableDate"
    t.integer "student_id"
    t.text "homeDescription"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "housephoto_file_name"
    t.string "housephoto_content_type"
    t.integer "housephoto_file_size"
    t.datetime "housephoto_updated_at"
    t.boolean "availableNow"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "conversation_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["student_id"], name: "index_messages_on_student_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "other_articles", force: :cascade do |t|
    t.string "othersType"
    t.integer "othersPrice"
    t.boolean "availableNow"
    t.integer "student_id"
    t.text "othersDescription"
    t.string "othersLocation"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "otherarticle_photo_file_name"
    t.string "otherarticle_photo_content_type"
    t.integer "otherarticle_photo_file_size"
    t.datetime "otherarticle_photo_updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "unversity"
    t.string "fname"
    t.string "lname"
    t.string "profilepic_file_name"
    t.string "profilepic_content_type"
    t.integer "profilepic_file_size"
    t.datetime "profilepic_updated_at"
    t.boolean "admin", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pseudo"
    t.index ["confirmation_token"], name: "index_students_on_confirmation_token", unique: true
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_students_on_unlock_token", unique: true
  end

  create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "degree"
    t.text "classTeaching"
    t.text "grades"
    t.integer "price"
    t.text "schedule"
    t.string "location"
    t.integer "student_id"
    t.text "tutorDescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo_tutor_file_name"
    t.string "photo_tutor_content_type"
    t.integer "photo_tutor_file_size"
    t.datetime "photo_tutor_updated_at"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "vehiculeType"
    t.integer "vehiculePrice"
    t.boolean "availableNow"
    t.integer "student_id"
    t.text "vehiculeDescription"
    t.string "vehiculeLocation"
    t.string "condition"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "vehicule_photo_file_name"
    t.string "vehicule_photo_content_type"
    t.integer "vehicule_photo_file_size"
    t.datetime "vehicule_photo_updated_at"
  end

end
