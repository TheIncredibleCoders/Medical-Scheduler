<%@ page import="java.util.*" %>
<%@ page import="com.Calendar.Event" %>
<%@ page import="com.Calendar.EventController" %>
<%@ page import="com.DAO.EventDao" %>
<%@ page import="org.springframework.context.ConfigurableApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%>
<% String appContextFile = "WEB-INF/AppContext.xml"; // Use the settings from this xml file %>
<% ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("AppContext.xml"); %>
<!DOCTYPE html>
<head>
    <title></title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Medic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
   </script>
   <link href="<c:url value="/resources/fullcalendar/fullcalendar.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/fullcalendar/fullcalendar.print.min.css" />" rel="stylesheet" media="print" >
<script src="<c:url value="/resources/fullcalendar/lib/moment.min.js"/>"></script>
<script src="<c:url value="/resources/fullcalendar/lib/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/fullcalendar/fullcalendar.min.js"/>"></script>
<script>
$(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
      },
      defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-03-01'
        },
        {
          title: 'Long Event',
          start: '2018-03-07',
          end: '2018-03-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-03-11',
          end: '2018-03-13'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T10:30:00',
          end: '2018-03-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-03-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2018-03-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2018-03-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2018-03-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-03-28'
        }
      ]
    });

  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#myDIV {
    width: 100%;
    padding: 50px 0;
    text-align: center;
    background-color: White;
    margin-top: 20px;
}
</style>
</head>
<body>
<h1></h1>
<br/>
<br/>
<div id='calendar'></div>
<button onclick="myFunction()">Create Event </button>
<div id="myDIV">
    <form:form action="add" method="POST" modelAttribute="event">
    <fieldset>
        <legend><em>Event Details</em></legend><br/>
         <form:input path="username" value="${username}" type="hidden"/>
         <form class="form-horizontal" role="form">
        <Left><h2>Patient Registration</h2>
               
                <div class="form-group">
                <label for="eventName" class="col-sm-3 control-label">Event Name</label>
                <div class="col-sm-9">
                <input type="text" path='eventName'id='eventName' placeholder="Event Name" class="form-control" autofocus>
                </div>
                </div>
        <div class="container">
                    <label for="patientfirstname" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="patientfirstname" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="patientlastname" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="patientlastname" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email* </label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control" name= "email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="patientphone" class="col-sm-3 control-label">Phone number* </label>
                    <div class="col-sm-9">
                      <input type="number" id="patientphone" placeholder="Phone Number" class="form-control" autofocus>  
                    </div>
                </div>
                <div class="form-group">
                    <label for="patientins" class="col-sm-3 control-label">Primary insurance </label>
                    <div class="col-sm-9">
                        <input type="text" id="patientins" placeholder="Primary insurance" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="patientdob" class="col-sm-3 control-label">Date of Birth*</label>
                    <div class="col-sm-9">
                        <input type="date" id="patientdob" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="eventDate" class="col-sm-3 control-label">Event Date*</label>
                    <div class="col-sm-9">
<input type="date" id="eventDate" path="month" path="day" path="year"> </p>
       </div>
       </div>
        <%-- No null titles --%>
        <c:if test="${eNameEmpty == \"true\"}">
            <span style="color: darkred;font-style: italic"><strong>Title of event cannot be empty!</strong></span>
        </c:if>
        <%-- No duplicate events --%>
        <c:if test="${isDuplicate == \"true\"}">
            <span style="color: darkred;font-style: italic"><strong>Duplicate event!</strong></span>
        </c:if>

        <br/><br/>
        Reason:
        <form:textarea path='eventDescription' id='edescription' style="margin-left: 8px;"></form:textarea>
        <input type="submit" value="Submit">
        <form action="jsp/view/PatientRegister.jsp">
    <input type="submit" value="Add Patient" />
     </form>
     

</fieldset>
 </form:form>
 </div>
 <script>
function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>
</body>
</html>