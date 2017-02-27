$(document).on "turbolinks:load", ->
  $('div.calendar').calendar()
  $('.calendar_range_start').calendar
    endCalendar: $('.calendar_range_end')

  $('.calendar_range_end').calendar
    startCalendar: $('.calendar_range_start')

  $('.ui.accordion').accordion()
  $('.ui.dropdown').dropdown
    action: 'hide'

  $('#calendar').fullCalendar
    firstDay: '1',
    eventSources: [
      '/calendars.json'
    ],
    timeFormat: 'H:mm'
    eventRender: (event, element) ->
      if event.description
        element.qtip
          content: {
            text: event.description
          },
          position: {
            my: 'center center',
            at: 'top center'
          },
          style: {
            classes: 'qtip-green qtip-shadow qtip-rounded'
          }

      return

