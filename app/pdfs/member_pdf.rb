require 'prawn'
require 'prawn/table'
class MemberPdf < Prawn::Document
  def initialize(member)
    super()
    @member = member
    header
    text_content
    product_rows
    #mem1
#    mem2
#table_content
  end

  def header
    #This inserts an image in the pdf file and sets the size of the image
    #image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 150
  end

  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
      text "The National federation for the blind of maharashtra - pune region", size: 15, style: :bold
    end

    bounding_box([300, y_position], :width => 270, :height => 300) do
    end

  end
  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
#    table product_rows do
#      row(0).font_style = :bold
#      self.header = true
#      self.row_colors = ['DDDDDD', 'FFFFFF']
#      self.column_widths = [40, 300, 200]
#    end
  end

  def product_rows
    image open(@member.documentinfo.photo.path)
    table([['Membership Number', 'Receipt Number', 'Membership register date', 'Membership class ', 'Date of admission', 'Branch']] + [[@member.membership_no, @member.receipt_no, @member.membership_register_date, @member.membership_class, @member.date_of_admission, @member.branch]])
    move_down 20
    text "Personal Information:"
    table([['Member Name', 'Date Of birth', 'Gender', 'occupation']] + [[@member.personalinfo.type_human + ' ' + @member.personalinfo.last_name.capitalize + ' ' + @member.personalinfo.first_name.capitalize + ' ' + @member.personalinfo.middle_name, @member.personalinfo.date_of_birth, @member.personalinfo.gender, @member.personalinfo.occupation]])
    text "Address"
    move_down 20
    table([['Address:', 'Village', 'Taluka', 'City:', 'Pin:', 'State']] + [[@member.addressinfo.address_1 + ' ' + @member.addressinfo.address_2, @member.addressinfo.village, @member.addressinfo.taluka, @member.addressinfo.city, @member.addressinfo.pin, @member.addressinfo.state]])
    move_down 20
    text "Contact Information"
    table([['E-mail:', 'Contact Number:', 'Mobile Number:', 'Mobile 2:']] + [[@member.contactinfo.email, @member.contactinfo.contact_no, @member.contactinfo.mobile_no, @member.contactinfo.mobile_2]])
    start_new_page
    move_down 20
    text "Information related disability"
    table([['Do you have Disability?', 'Type of disability:', 'percentage of disability:', 'since age', 'disability reason']] + [[@member.disabilityinfo.have_you_disability, @member.disabilityinfo.type_disability, @member.disabilityinfo.percentage_disability, @member.disabilityinfo.since_age, @member.disabilityinfo.disability_reason]])
    move_down 20
    text "Marital related"
    table([['Marital status ', 'Wedding anniversary date', 'Spouse name', 'No of family members', 'Kids', 'Parents dependent on you']] + [[@member.maritalinfo.marital_status, @member.maritalinfo.wedding_anniversary_date, @member.maritalinfo.spouse_type + ' ' + @member.maritalinfo.spouse_firstt_name.capitalize + ' ' + @member.maritalinfo.spouse_middle_name.capitalize + ' ' + @member.maritalinfo.spouse_sur_name, @member.maritalinfo.no_of_family_members, @member.maritalinfo.kids, @member.maritalinfo.parents_dependent_on_you]])
    text "Educational Details:"
    text "Standard passed: "
    text "#{@member.professionalinfo.standard_passed}"
    text "professional Qualification "
    text "#{@member.professionalinfo.professional_Qualification}"
    move_down 20
    text "Details of Employer (Office Address) for Individual member (If Employed / Self-Employed) or Details of Institution (If student)"
    table([['Address ', 'City', 'Pin', 'State', 'Tel', 'E-mail', 'Designation', 'Department', 'Occupation details', 'Annual Income', 'Unemployed registered details', 'Unemployed registration no', 'Employment registration date']] + [[@member.professionalinfo.es_address_1 + " " + @member.professionalinfo.es_address_2, @member.professionalinfo.es_city, @member.professionalinfo.es_pin, @member.professionalinfo.es_state, @member.professionalinfo.es_tell, @member.professionalinfo.es_email, @member.professionalinfo.designation, @member.professionalinfo.department, @member.professionalinfo.occupation_details, @member.professionalinfo.annual_income, @member.professionalinfo.unemployed_registered_details, @member.professionalinfo.unemployed_registration_no ]])
    move_down 20
    text "Disability certificate details:"
    table([['Do you have Certificate of Blindness from Civil Surgeon? ', 'Do you know Braille? ', 'Blindness issued dr name', 'Place', 'Certificate no', 'Certificate date', 'Percent blindness stated']] + [[@member.certificateinfo.do_you_have_blindness, @member.certificateinfo.do_you_know_braille, @member.certificateinfo.blindness_issued_dr_name, @member.certificateinfo.place, @member.certificateinfo.certificate_no, @member.certificateinfo.certificate_date, @member.certificateinfo.percent_blindness_stated]])
    move_down 20
    text "Have you ever availed / participated in these services by NFBM"
    text "Member braille books circulating library"
    if @member.serviceinfo.member_braille_books_circulating_library == true
      text "Yes"
    else
      text "No"
    end
    text "Self employment aid"
    if @member.serviceinfo.self_employment_aid == true
      text "Yes"
    else
      text "No"
    end
    text "Scholarship student aid scheme"
    if @member.serviceinfo.scholarship_student_aid_scheme == true
      text "Yes"
    else
      text "No"
    end
#    table([['Member braille books circulating library', 'Self employment aid', 'Scholarship student aid scheme', 'Member of braille jagriti magazine', 'Placement services', 'Medical aid', 'Counselling services', 'Any others']] + [[@member.member_braille_books_circulating_library, @member.self_employment_aid, @member.scholarship_student_aid_scheme, @member.member_of_braille_jagriti_magazine, @member.placement_services, @member.medical_aid, @member.counselling_services, @member.any_others]])
    move_down 20
    text "Type of ID card you are going to submit:"
    text "#{@member.documentinfo.type_id_proup}"
    text "ID Number:"
    text "#{@member.documentinfo.id_no}"
    move_down 20
text "I pledge to participate actively I support the objectives & core values of the NFBM, & I shall abide to constitution of the NFBM."
    text "I also declare, the above information is true & correct to my knowledge & Belief."
    text "Date:"
    text "#{@member.forminfo.member_submited_form_date}"
    text "proposed / Introduces by"
    text "#{@member.forminfo.introduces_by}"
    text "#{@member.membership_no}"
    move_down 20
    image open(@member.documentinfo.signature.path)
  end
end
