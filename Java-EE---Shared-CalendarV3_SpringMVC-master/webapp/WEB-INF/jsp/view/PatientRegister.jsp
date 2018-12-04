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

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<div class="container">
<form:form action="add" method="POST" modelAttribute="event">
            <form class="form-horizontal" role="form">
                <center><h2>Patient Registration</h2>
                <div class="form-group">
                    <label for="patientfirstname" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="patientfirstname" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="patientlastname class="col-sm-3 control-label">Last Name</label>
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
                </div>
                <div class="form-group">
                    <label for="birthdate" class="col-sm-3 control-label">Date of Birth*</label>
                    <div class="col-sm-9">
                        <input type="date" id="patientdob" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="SSN" class="col-sm-3 control-label">Social Security Number</label>
                    <div class="col-sm-9">
                        <input name= "Social Security" type="text" id="SSN" placeholder="Social Security Number" class="form-control">
                    </div>
                </div>
                </form:form>
                <script>
                    var retrieveValue = function(ev){
        var $this = $(this),
            val = $this.data('value');

        if (val) {
            $this.val(val);
        }
    },
    hideValue = function(ev){
        var $this = $(this);

        $this.data('value', $this.val());
        $this.val($this.val().replace(/^\d{5}/, '*****'));
    };

$('#ssn').focus(retrieveValue);

$('#ssn').blur(hideValue);

$('#ssn_form').submit(function(ev){
    ev.preventDefault();
    retrieveValue.call($('#ssn')[0], ev);
    $(this).submit();
});
                </script>
                
                <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        <input type="text" id="address" placeholder="Address" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                        <label for="Height" class="col-sm-3 control-label">Height </label>
                    <div class="col-sm-9">
                        <input type="number" id="height" placeholder="Please write your height in centimetres" class="form-control">
                    </div>
                </div>
                 <div class="form-group">
                        <label for="weight" class="col-sm-3 control-label">Weight </label>
                    <div class="col-sm-9">
                        <input type="number" id="weight" placeholder="Please write your weight in kilograms" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleradio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="maleradio" value="Male">Male
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </form> <!-- /form -->
</div>
</html>