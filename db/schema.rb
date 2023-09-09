# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_07_200457) do
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
    t.datetime "avatar_updated_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "student_id"
    t.string "condition"
    t.integer "university_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
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
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "electronicsphoto_file_name"
    t.string "electronicsphoto_content_type"
    t.integer "electronicsphoto_file_size"
    t.datetime "electronicsphoto_updated_at", precision: nil
    t.string "electronicsComputerEmail"
  end

  create_table "housings", force: :cascade do |t|
    t.string "rentalType"
    t.integer "numberofBedrooms"
    t.integer "numberofBathrooms"
    t.integer "housePrice"
    t.datetime "availableDate", precision: nil
    t.integer "student_id"
    t.text "homeDescription"
    t.string "address"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "housephoto_file_name"
    t.string "housephoto_content_type"
    t.integer "housephoto_file_size"
    t.datetime "housephoto_updated_at", precision: nil
    t.boolean "availableNow"
    t.string "housingemail"
    t.string "housingTitle"
  end

  create_table "join_universities_students", force: :cascade do |t|
    t.integer "student_id"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_join_universities_students_on_student_id"
    t.index ["university_id"], name: "index_join_universities_students_on_university_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "conversation_id"
    t.integer "student_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["student_id"], name: "index_messages_on_student_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
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
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "otherarticle_photo_file_name"
    t.string "otherarticle_photo_content_type"
    t.integer "otherarticle_photo_file_size"
    t.datetime "otherarticle_photo_updated_at", precision: nil
    t.string "other_articlesEmail"
    t.string "other_articleTitle"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "fname"
    t.string "lname"
    t.string "profilepic_file_name"
    t.string "profilepic_content_type"
    t.integer "profilepic_file_size"
    t.datetime "profilepic_updated_at", precision: nil
    t.boolean "admin", default: false
    t.string "confirmation_token"
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
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
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "photo_tutor_file_name"
    t.string "photo_tutor_content_type"
    t.integer "photo_tutor_file_size"
    t.datetime "photo_tutor_updated_at", precision: nil
    t.boolean "availabletutor"
    t.string "emailtutor"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "website"
    t.string "domainEdu"
    t.string "university_photo_file_name"
    t.string "university_photo_content_type"
    t.integer "university_photo_file_size"
    t.datetime "university_photo_updated_at"
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
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "vehicule_photo_file_name"
    t.string "vehicule_photo_content_type"
    t.integer "vehicule_photo_file_size"
    t.datetime "vehicule_photo_updated_at", precision: nil
    t.string "vehiculeEmail"
    t.string "vehiculeTitle"
  end

  add_foreign_key "join_universities_students", "students"
  add_foreign_key "join_universities_students", "universities"
  add_foreign_key "messages", "conversations"
end
