import $ from 'jquery'
import jQueryUI from 'jquery-ui'
import moment from 'moment'
import fullCalendar from 'fullcalendar'


$('#timetable').fullCalendar({
    editable: true,
    firstDay: 1,
    droppable: true,
})