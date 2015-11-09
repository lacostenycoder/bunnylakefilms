# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->

  # Enable TurboLinks on GET forms
  $('form[method=get]:not([data-remote])').on 'submit', (event) ->
    event.preventDefault()
    Turbolinks.visit @.action + '?' + $(@).serialize()

  $.standardCookie = (name, value) ->
    $.cookie(name, value, { path: '/', expires: 730 })

  # Generic Sort Link Action
  $.standardDataAttributeCookieBinding = (data_attribute, cookie_name) ->
    $("a[#{data_attribute}]").click (event) ->
      event.preventDefault()
      $.standardCookie(cookie_name, $(this).attr(data_attribute))
      Turbolinks.visit(window.location.href)
      return

  # Chosen select fields
  # $('select#user_time_zone').chosen(disable_search_threshold: 160)
  $('select.select_small_field').chosen(disable_search_threshold: 160, width: '150px')

  # Bind Panel Sort Links
  $.standardDataAttributeCookieBinding("data-works-panel-sort", "works_panel_current_sort")
  $.standardDataAttributeCookieBinding("data-categories-panel-sort", "categories_panel_current_sort")

  # Search buttons
  search_submit = (event) ->
    event.preventDefault()
    $('#index_search_form').submit()

  $('.search-icon').click (event) ->
    search_submit(event)

  $('.clear-search-field').click (event) ->
    $('#current_search').val('')
    $.standardCookie('current_user_search', '')
    search_submit(event)

  # Sortable Indexes
  if $('.sortable').length > 0
    post_data = {}
    table_width = $('.sortable').width()
    cells = $('.table').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('.table td').css('width', desired_width)

    $('.sortable').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'
      cancel: 'a'
      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {color: "#F5D79C"}, 1000)
      update: (e, ui) ->
        item_id = ui.item.data('item-id')
        row_order = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        post_data[$('.sortable').data('sortable-singular-name')] = {row_order_position: row_order}
        $.ajax(
          type: 'POST'
          url: '/admin/' + $('.sortable').data('sortable-table-name')  + '/' + item_id + '/update_row_order'
          dataType: 'json'
          data: post_data
        )
    )

  # Apply same table formatting for non-sortable tables
  if $('#non_sortable').length > 0
    post_data = {}
    table_width = $('#non_sortable').width()
    cells = $('.table').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $('.table td').css('width', desired_width)

  # Check All button
  if $('.portfolio_ids:checked').length == $('.portfolio_ids').length
    $('#portfolio_check_all').prop('checked', true)

  $('#portfolio_check_all').change (event) ->
    $('.portfolio_ids').prop('checked', this.checked)

  # Success & Error on remotes
  $("a[data-remote]").on "ajax:error", (e, xhr, status, error) ->
    alert "Something went wrong"
  $(".keyword_assignment_delete").on "ajax:success", (e, data, status, xhr) ->
    Turbolinks.visit(window.location.href)
