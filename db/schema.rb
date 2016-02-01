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

ActiveRecord::Schema.define(version: 20160201153508) do

  create_table "activities", force: :cascade do |t|
    t.text     "anual_activity",        limit: 65535
    t.boolean  "hdn_boolean"
    t.string   "activity_title",        limit: 255
    t.date     "activity_created_date"
    t.text     "activity_discription",  limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "photo_1_file_name",     limit: 255
    t.string   "photo_1_content_type",  limit: 255
    t.integer  "photo_1_file_size",     limit: 4
    t.datetime "photo_1_updated_at"
    t.string   "photo_2_file_name",     limit: 255
    t.string   "photo_2_content_type",  limit: 255
    t.integer  "photo_2_file_size",     limit: 4
    t.datetime "photo_2_updated_at"
    t.string   "photo_3_file_name",     limit: 255
    t.string   "photo_3_content_type",  limit: 255
    t.integer  "photo_3_file_size",     limit: 4
    t.datetime "photo_3_updated_at"
  end

  create_table "addressinfos", force: :cascade do |t|
    t.string   "address_1",  limit: 255
    t.string   "address_2",  limit: 255
    t.string   "village",    limit: 255
    t.string   "taluka",     limit: 255
    t.string   "city",       limit: 255
    t.integer  "pin",        limit: 4
    t.string   "state",      limit: 255
    t.integer  "member_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "addressinfos", ["member_id"], name: "index_addressinfos_on_member_id", using: :btree

  create_table "certificateinfos", force: :cascade do |t|
    t.string   "do_you_have_blindness",    limit: 255
    t.string   "blindness_issued_dr_name", limit: 255
    t.string   "place",                    limit: 255
    t.string   "certificate_no",           limit: 255
    t.date     "certificate_date"
    t.integer  "percent_blindness_stated", limit: 4
    t.string   "do_you_know_braille",      limit: 255
    t.integer  "member_id",                limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "certificateinfos", ["member_id"], name: "index_certificateinfos_on_member_id", using: :btree

  create_table "circulars", force: :cascade do |t|
    t.string   "circular_for",         limit: 255
    t.string   "circular_attachment",  limit: 255
    t.string   "circular_discription", limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "attachment",           limit: 255
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contactinfos", force: :cascade do |t|
    t.string   "email",                        limit: 255
    t.string   "fax",                          limit: 255
    t.string   "contact_no",                   limit: 255
    t.string   "mobile_no",                    limit: 255
    t.string   "mobile_2",                     limit: 255
    t.integer  "member_id",                    limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "using_screen_reader_software", limit: 255
    t.string   "using_whatsapp",               limit: 255
    t.string   "on_wich_number",               limit: 255
  end

  add_index "contactinfos", ["member_id"], name: "index_contactinfos_on_member_id", using: :btree

  create_table "contents", force: :cascade do |t|
    t.text     "dream_content", limit: 65535
    t.boolean  "about"
    t.boolean  "dream"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "about_flag"
    t.text     "about_us",      limit: 65535
  end

  create_table "disabilityinfos", force: :cascade do |t|
    t.string   "have_you_disability",   limit: 255
    t.string   "type_disability",       limit: 255
    t.integer  "percentage_disability", limit: 4
    t.integer  "since_age",             limit: 4
    t.text     "disability_reason",     limit: 65535
    t.integer  "member_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "disabilityinfos", ["member_id"], name: "index_disabilityinfos_on_member_id", using: :btree

  create_table "documentinfos", force: :cascade do |t|
    t.string   "type_id_proup",          limit: 255
    t.string   "id_no",                  limit: 255
    t.integer  "member_id",              limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "photo_file_name",        limit: 255
    t.string   "photo_content_type",     limit: 255
    t.integer  "photo_file_size",        limit: 4
    t.datetime "photo_updated_at"
    t.string   "signature_file_name",    limit: 255
    t.string   "signature_content_type", limit: 255
    t.integer  "signature_file_size",    limit: 4
    t.datetime "signature_updated_at"
  end

  add_index "documentinfos", ["member_id"], name: "index_documentinfos_on_member_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.integer  "member_id",                           limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "disability_certificate_file_name",    limit: 255
    t.string   "disability_certificate_content_type", limit: 255
    t.integer  "disability_certificate_file_size",    limit: 4
    t.datetime "disability_certificate_updated_at"
    t.string   "id_proof_file_name",                  limit: 255
    t.string   "id_proof_content_type",               limit: 255
    t.integer  "id_proof_file_size",                  limit: 4
    t.datetime "id_proof_updated_at"
    t.string   "address_proof_file_name",             limit: 255
    t.string   "address_proof_content_type",          limit: 255
    t.integer  "address_proof_file_size",             limit: 4
    t.datetime "address_proof_updated_at"
    t.string   "date_of_birth_proof_file_name",       limit: 255
    t.string   "date_of_birth_proof_content_type",    limit: 255
    t.integer  "date_of_birth_proof_file_size",       limit: 4
    t.datetime "date_of_birth_proof_updated_at"
  end

  add_index "documents", ["member_id"], name: "index_documents_on_member_id", using: :btree

  create_table "donations", force: :cascade do |t|
    t.string   "donar_name",          limit: 255
    t.string   "donar_email",         limit: 255
    t.string   "donar_mobile",        limit: 255
    t.string   "to_project",          limit: 255
    t.string   "how_did_you_find_us", limit: 255
    t.text     "donation_comment",    limit: 65535
    t.boolean  "account_flag"
    t.string   "bank_name",           limit: 255
    t.string   "account_no",          limit: 255
    t.string   "ifsc_code",           limit: 255
    t.string   "dd_name",             limit: 255
    t.string   "followup_with_donar", limit: 255
    t.text     "donation_remarks",    limit: 65535
    t.string   "receive_donation",    limit: 255
    t.decimal  "donation_amount",                   precision: 10
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "forminfos", force: :cascade do |t|
    t.string   "introduces_by",             limit: 255
    t.date     "member_submited_form_date"
    t.string   "f_place",                   limit: 255
    t.boolean  "form_details"
    t.integer  "member_id",                 limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "forminfos", ["member_id"], name: "index_forminfos_on_member_id", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "company",     limit: 255
    t.string   "type_job",    limit: 255
    t.string   "url",         limit: 255
    t.text     "discription", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "maritalinfos", force: :cascade do |t|
    t.string   "marital_status",           limit: 255
    t.date     "wedding_anniversary_date"
    t.string   "spouse_type",              limit: 255
    t.string   "spouse_firstt_name",       limit: 255
    t.string   "spouse_middle_name",       limit: 255
    t.string   "spouse_sur_name",          limit: 255
    t.integer  "no_of_family_members",     limit: 4
    t.integer  "kids",                     limit: 4
    t.string   "parents_dependent_on_you", limit: 255
    t.integer  "member_id",                limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "maritalinfos", ["member_id"], name: "index_maritalinfos_on_member_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.boolean  "terms_agree"
    t.integer  "membership_no",                            limit: 4
    t.integer  "receipt_no",                               limit: 4
    t.date     "membership_register_date"
    t.string   "membership_class",                         limit: 255
    t.date     "date_of_admission"
    t.string   "branch",                                   limit: 255
    t.string   "type_human",                               limit: 255
    t.string   "first_name",                               limit: 255
    t.string   "middle_name",                              limit: 255
    t.string   "last_name",                                limit: 255
    t.date     "date_of_birth"
    t.string   "gender",                                   limit: 255
    t.string   "occupation",                               limit: 255
    t.string   "address_1",                                limit: 255
    t.string   "address_2",                                limit: 255
    t.string   "village",                                  limit: 255
    t.string   "taluka",                                   limit: 255
    t.string   "city",                                     limit: 255
    t.integer  "pin",                                      limit: 4
    t.string   "state",                                    limit: 255
    t.string   "email",                                    limit: 255
    t.string   "contact_no",                               limit: 255
    t.string   "mobile_no",                                limit: 255
    t.string   "mobile_2",                                 limit: 255
    t.string   "have_you_disability",                      limit: 255
    t.string   "type_disability",                          limit: 255
    t.integer  "percentage_disability",                    limit: 4
    t.integer  "since_age",                                limit: 4
    t.string   "disability_reason",                        limit: 255
    t.string   "marital_status",                           limit: 255
    t.date     "wedding_anniversary_date"
    t.string   "spouse_type",                              limit: 255
    t.string   "spouse_firstt_name",                       limit: 255
    t.string   "spouse_middle_name",                       limit: 255
    t.string   "spouse_sur_name",                          limit: 255
    t.integer  "no_of_family_members",                     limit: 4
    t.integer  "kids",                                     limit: 4
    t.string   "parents_dependent_on_you",                 limit: 255
    t.string   "standard_passed",                          limit: 255
    t.string   "professional_Qualification",               limit: 255
    t.string   "es_address_1",                             limit: 255
    t.string   "es_address_2",                             limit: 255
    t.string   "es_city",                                  limit: 255
    t.integer  "es_pin",                                   limit: 4
    t.string   "es_state",                                 limit: 255
    t.string   "es_tell",                                  limit: 255
    t.string   "es_email",                                 limit: 255
    t.string   "designation",                              limit: 255
    t.string   "department",                               limit: 255
    t.string   "occupation_details",                       limit: 255
    t.string   "annual_income",                            limit: 255
    t.string   "unemployed_registered_details",            limit: 255
    t.integer  "unemployed_registration_no",               limit: 4
    t.date     "employment_registration_date"
    t.string   "do_you_have_blindness",                    limit: 255
    t.string   "blindness_issued_dr_name",                 limit: 255
    t.string   "place",                                    limit: 255
    t.string   "certificate_no",                           limit: 255
    t.date     "certificate_date"
    t.integer  "percent_blindness_stated",                 limit: 4
    t.string   "do_you_know_braille",                      limit: 255
    t.boolean  "member_braille_books_circulating_library"
    t.boolean  "self_employment_aid"
    t.boolean  "scholarship_student_aid_scheme"
    t.boolean  "member_of_braille_jagriti_magazine"
    t.boolean  "placement_services"
    t.boolean  "medical_aid"
    t.boolean  "fgnp"
    t.boolean  "counselling_services"
    t.boolean  "any_others"
    t.boolean  "form_details"
    t.string   "introduces_by",                            limit: 255
    t.date     "member_submited_form_date"
    t.boolean  "old_member"
    t.string   "f_place",                                  limit: 255
    t.boolean  "clerk_flag"
    t.boolean  "admin_flag"
    t.string   "id_proup",                                 limit: 255
    t.string   "id_no",                                    limit: 255
    t.datetime "created_at",                                                            null: false
    t.datetime "updated_at",                                                            null: false
    t.string   "photo_file_name",                          limit: 255
    t.string   "photo_content_type",                       limit: 255
    t.integer  "photo_file_size",                          limit: 4
    t.datetime "photo_updated_at"
    t.string   "signature_file_name",                      limit: 255
    t.string   "signature_content_type",                   limit: 255
    t.integer  "signature_file_size",                      limit: 4
    t.datetime "signature_updated_at"
    t.boolean  "fee_receive_flag"
    t.decimal  "fee_amt",                                                precision: 10
    t.boolean  "suspend"
    t.text     "suspend_remarks",                          limit: 65535
    t.boolean  "delete_flag"
    t.boolean  "super_admin"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "phone",           limit: 255
    t.string   "subject",         limit: 255
    t.text     "message_content", limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "personalinfos", force: :cascade do |t|
    t.string   "type_human",    limit: 255
    t.string   "first_name",    limit: 255
    t.string   "middle_name",   limit: 255
    t.string   "last_name",     limit: 255
    t.date     "date_of_birth"
    t.string   "gender",        limit: 255
    t.string   "occupation",    limit: 255
    t.integer  "member_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "personalinfos", ["member_id"], name: "index_personalinfos_on_member_id", using: :btree

  create_table "professionalinfos", force: :cascade do |t|
    t.string   "standard_passed",               limit: 255
    t.string   "professional_Qualification",    limit: 255
    t.string   "es_address_1",                  limit: 255
    t.string   "es_address_2",                  limit: 255
    t.string   "es_city",                       limit: 255
    t.integer  "es_pin",                        limit: 4
    t.string   "es_state",                      limit: 255
    t.string   "es_tell",                       limit: 255
    t.string   "es_email",                      limit: 255
    t.string   "designation",                   limit: 255
    t.string   "department",                    limit: 255
    t.string   "occupation_details",            limit: 255
    t.string   "annual_income",                 limit: 255
    t.string   "unemployed_registered_details", limit: 255
    t.string   "unemployed_registration_no",    limit: 255
    t.string   "employment_registration_date",  limit: 255
    t.integer  "member_id",                     limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "professionalinfos", ["member_id"], name: "index_professionalinfos_on_member_id", using: :btree

  create_table "scriberequests", force: :cascade do |t|
    t.string   "member_name",         limit: 255
    t.string   "member_email",        limit: 255
    t.string   "member_mobile",       limit: 255
    t.date     "exam_start_date"
    t.date     "exam_end_date"
    t.integer  "exam_duration",       limit: 4
    t.time     "exam_start_time"
    t.time     "exam_end_time"
    t.string   "type_of_exam",        limit: 255
    t.string   "what_type_of_scribe", limit: 255
    t.string   "medium_of_exam",      limit: 255
    t.string   "address_1",           limit: 255
    t.string   "address_2",           limit: 255
    t.string   "city",                limit: 255
    t.integer  "pin",                 limit: 4
    t.string   "state",               limit: 255
    t.text     "exam_discription",    limit: 65535
    t.string   "scribe_first_name",   limit: 255
    t.string   "scribe_last_name",    limit: 255
    t.string   "scribe_email",        limit: 255
    t.string   "scribe_mobile",       limit: 255
    t.text     "rejection_reason",    limit: 65535
    t.string   "request_status",      limit: 255
    t.integer  "member_id",           limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "mode_of_exam",        limit: 255
  end

  add_index "scriberequests", ["member_id"], name: "index_scriberequests_on_member_id", using: :btree

  create_table "scribes", force: :cascade do |t|
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "email",         limit: 255
    t.string   "mobile",        limit: 255
    t.string   "qualification", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "type_join",     limit: 255
  end

  create_table "serviceinfos", force: :cascade do |t|
    t.boolean  "member_braille_books_circulating_library"
    t.boolean  "self_employment_aid"
    t.boolean  "scholarship_student_aid_scheme"
    t.boolean  "member_of_braille_jagriti_magazine"
    t.boolean  "placement_services"
    t.boolean  "medical_aid"
    t.boolean  "counselling_services"
    t.string   "any_others",                               limit: 255
    t.integer  "member_id",                                limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  add_index "serviceinfos", ["member_id"], name: "index_serviceinfos_on_member_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "category",    limit: 255
    t.string   "post",        limit: 255
    t.text     "information", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "role",                   limit: 255
    t.text     "tirms_content",          limit: 65535
    t.integer  "member_id",              limit: 4
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "username",               limit: 255
    t.boolean  "tirm_flag"
  end

  add_index "users", ["member_id"], name: "index_users_on_member_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "addressinfos", "members"
  add_foreign_key "certificateinfos", "members"
  add_foreign_key "contactinfos", "members"
  add_foreign_key "disabilityinfos", "members"
  add_foreign_key "documentinfos", "members"
  add_foreign_key "documents", "members"
  add_foreign_key "forminfos", "members"
  add_foreign_key "maritalinfos", "members"
  add_foreign_key "personalinfos", "members"
  add_foreign_key "professionalinfos", "members"
  add_foreign_key "scriberequests", "members"
  add_foreign_key "serviceinfos", "members"
  add_foreign_key "users", "members"
end
