<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="org.springframework.context.ConfigurableApplicationContext" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
    prefix="fn" %> 
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appContextFile = "WEB-INF/AppContext.xml"; // Use the settings from this xml file %>
<% ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("AppContext.xml"); %>

<html lang="en">
<head>
    <title>Register</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  <link href='../fullcalendar.min.css' rel='stylesheet' />
<link href='../fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='../lib/moment.min.js'></script>
<script src='../lib/jquery.min.js'></script>
<script src='../fullcalendar.min.js'></script>
<script>
$(function).ready(function() {
        $('#calendar').fullCalendar({
            theme: true,
            editable: false,
            events: "/CalendarProject/CalendarJsonServlet"
        });
 
    });
1
2
</script>
</head>
<body>
<h1></h1>
<br/>
<br/>
<form:form action="add" method="POST" modelAttribute="event">
    <fieldset>
        <legend><em>Event Details</em></legend><br/>
        <label>Event name: </label><span>
       <form:input path="username" value="${username}" type="hidden"/>
        <form:input path="eventName"/>
<label>Patient Lastname:</lable>
<form:input path="patientlastname"/>
<label>Patient Firstname:</lable>
<form:input path="patientfirstname"/>
<p>Birth Date: <input type="text" id="datepicker"  path="patientdob"></p>
<label>Insurence:</lable>
<form:input path="patientins"/>
<label>Phone:</lable>
<form:input path="patientphone"/>
<lable>Email:</lable>
<form:input path="email"/>
<div id='fullcalendar'></div>
<p>Event Date: <input type="text" id="fullcalendar" path="month" path="day" path="year"></p>

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
        
    </fieldset>
</form:form>
</body>
</html>