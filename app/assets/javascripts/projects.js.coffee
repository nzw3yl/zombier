# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  nowTemp = new Date()
  now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0)
  checkin = $("#project_current_start").datepicker(onRender: (date) ->
    (if date.valueOf() < now.valueOf() then "disabled" else "")
  ).on("changeDate", (ev) ->
    if ev.date.valueOf() > checkout.date.valueOf()
      newDate = new Date(ev.date)
      newDate.setDate newDate.getDate() + 1
      checkout.setValue newDate
    checkin.hide()
    $("#project_current_close")[0].focus()
  ).data("datepicker")
  checkout = $("#project_current_close").datepicker(onRender: (date) ->
    (if date.valueOf() <= checkin.date.valueOf() then "disabled" else "")
  ).on("changeDate", (ev) ->
    checkout.hide()
  ).data("datepicker")

  $("#calendar").fullCalendar 
    editable: true,
    header:
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    defaultView: 'month',
    height: 500,
    slotMinutes: 30,

    eventSources: [{
      url: '/projects',
    }],

    timeFormat: 'h:mm t{ - h:mm t} ',
    dragOpacity: "0.5"
  
