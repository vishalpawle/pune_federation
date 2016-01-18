json.array!(@donations) do |donation|
  json.extract! donation, :id, :donar_name, :donar_email, :donar_mobile, :to_project, :how_did_you_find_us, :donation_comment, :account_flag, :bank_name, :account_no, :ifsc_code, :dd_name, :followup_with_donar, :donation_remarks, :receive_donation, :donation_amount
  json.url donation_url(donation, format: :json)
end
