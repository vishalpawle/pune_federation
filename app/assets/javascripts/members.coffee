# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#member_old_member").change ->
    if $("#member_old_member").is(":checked")

      alert("You've checked the checkbox for old / current member of NFBM. now you are able to store the following information against this member:, \"Personal information,\" \"Address information,\" \"Contact information,\" \"and disability related\"")
      alert("But if you have an entire data of this member, \(including scand photo and signature,\) then we recommend you to kindly uncheck this checkbox.")
