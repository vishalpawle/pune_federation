json.array!(@serviceinfos) do |serviceinfo|
  json.extract! serviceinfo, :id, :member_braille_books_circulating_library, :self_employment_aid, :scholarship_student_aid_scheme, :member_of_braille_jagriti_magazine, :placement_services, :medical_aid, :counselling_services, :any_others, :member_id
  json.url serviceinfo_url(serviceinfo, format: :json)
end
