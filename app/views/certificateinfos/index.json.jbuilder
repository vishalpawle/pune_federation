json.array!(@certificateinfos) do |certificateinfo|
  json.extract! certificateinfo, :id, :do_you_have_blindness, :blindness_issued_dr_name, :place, :certificate_no, :certificate_date, :percent_blindness_stated, :do_you_know_braille, :member_id
  json.url certificateinfo_url(certificateinfo, format: :json)
end
