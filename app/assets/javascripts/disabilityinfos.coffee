# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#disabilityinfo_type_disability").hide()
  $("#disabilityinfo_percentage_disability").hide()
  $("#disabilityinfo_since_age").hide()
  $("#disabilityinfo_disability_reason").hide()
  $('#disabilityinfo_have_you_disability_yes, #disabilityinfo_have_you_disability_no' ).change ->
    if $('#disabilityinfo_have_you_disability_yes').is(':checked')
#      alert('hi')
      $("#disabilityinfo_type_disability").val('Blind').attr('readonly', true)
      $("#disabilityinfo_type_disability").show()
      $("#disabilityinfo_percentage_disability").show()
      $("#disabilityinfo_since_age").show()
      $("#disabilityinfo_disability_reason").show()
    else if $('#disabilityinfo_have_you_disability_no').is(':checked')
      $("#disabilityinfo_type_disability").hide()
      $("#disabilityinfo_percentage_disability").hide()
      $("#disabilityinfo_since_age").hide()
      $("#disabilityinfo_disability_reason").hide()

