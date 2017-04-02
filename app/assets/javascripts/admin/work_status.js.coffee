# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready ->
  setInterval ->
    if $('#work_category_id_chosen a span').text() != 'Docs + Features'
      $('#work_work_status_id_chosen .chosen-drop').hide()
    else
      $('#work_work_status_id_chosen .chosen-drop').show()
  , 500
