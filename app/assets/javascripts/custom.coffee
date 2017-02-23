$(document).on "turbolinks:load", ->
  $('div.calendar').calendar()
  $('.calendar_range_start').calendar({
    endCalendar: $('.calendar_range_end')
  })
  $('.calendar_range_end').calendar({
    startCalendar: $('.calendar_range_start')
  })
  $('.ui.dropdown').dropdown({
    action: 'hide'
  })
  $('.ui.accordion').accordion()
  $('#calendar').fullCalendar({
    firstDay: '1',
    eventSources: [
      '/events.json'
    ]
  })

