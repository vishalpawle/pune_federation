# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#maritalinfo_wedding_anniversary_date").hide()
  $("#maritalinfo_wedding_anniversary_date").val('')

  $("#maritalinfo_spouse_type").hide()
  $("#maritalinfo_spouse_firstt_name").hide()
  $("#maritalinfo_spouse_middle_name").hide()
  $("#maritalinfo_spouse_sur_name").hide()
  $("#maritalinfo_kids").hide()
  $("#maritalinfo_marital_status_married, #maritalinfo_marital_status_unmarried").change ->
    if $("#maritalinfo_marital_status_married").is(":checked")
      $("#maritalinfo_wedding_anniversary_date").show()
      $("#maritalinfo_spouse_type").show()
      $("#maritalinfo_spouse_firstt_name").show()
      $("#maritalinfo_spouse_middle_name").show()
      $("#maritalinfo_spouse_sur_name").show()
      $("#maritalinfo_kids").show()
      $("#maritalinfo_wedding_anniversary_date").val('')

    else if $("#maritalinfo_marital_status_unmarried").is(":checked")
      $("#maritalinfo_wedding_anniversary_date").val('')

      $("#maritalinfo_wedding_anniversary_date").hide()
      $("#maritalinfo_spouse_type").hide()
      $("#maritalinfo_spouse_firstt_name").hide()
      $("#maritalinfo_spouse_middle_name").hide()
      $("#maritalinfo_spouse_sur_name").hide()
      $("#maritalinfo_kids").hide()
