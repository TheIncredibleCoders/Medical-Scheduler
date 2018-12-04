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
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link href="<c:url value="/resources/web/css/bootstrap.css"/>" rel="stylesheet">
	<!-- Bootstrap-Core-CSS -->
	<link href="<c:url value="/resources/web/css/style.css"/>" rel="stylesheet" type="text/css" media="all">
	<!-- Style-CSS -->
	<link href="<c:url value="/resources/web/css/fontawesome-all.css"/>" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	    rel="stylesheet">
	<!-- //Web-Fonts -->
   
	<!-- header -->
	<header>
		<!-- top-bar -->
		<div class="top-bar py-3">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 top-social-agile">
						<div class="row">
							<!-- social icons -->
							<ul class="col-lg-4 col-6 top-right-info text-center">
								<li>
									<a href="#">
										<i class="fab fa-facebook-f"></i>
									</a>
								</li>
								<li class="mx-3">
									<a href="#">
										<i class="fab fa-twitter"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fab fa-google-plus-g"></i>
									</a>
								</li>
								<li class="ml-3">
									<a href="#">
										<i class="fab fa-pinterest-p"></i>
									</a>
								</li>
							</ul>
							<!-- //social icons -->
							<div class="col-6 header-top_w3layouts pl-3 text-lg-left text-center">
								<p class="text-white">
									<i class="fas fa-map-marker-alt mr-2"></i>Pomona, CA, USA</p>
							</div>
						</div>
					</div>
					<div class="col-lg-5 top-social-agile text-lg-right text-center">
						<div class="row">
							<div class="col-lg-7 col-6 top-w3layouts">
								<p class="text-white">
									<i class="far fa-envelope-open mr-2"></i>
									<a href="mailto:info@example.com" class="text-white">info@example.com</a>
								</p>
							</div>
							<div class="col-lg-5 col-6 header-w3layouts pl-4 text-lg-left">
								<p class="text-white">
									<i class="fas fa-phone mr-2"></i>+1 000263676</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- //top-bar -->

	<!-- header 2 -->
	<div id="home">
		<!-- navigation -->
		<div class="main-top py-1">
			<nav class="navbar navbar-expand-lg navbar-light fixed-navi">
				<div class="container">
					<!-- logo -->
					<h1>
						<a class="navbar-brand font-weight-bold font-italic" href="index.html">
							<span>Advanced</span>Clinic
							<i class="fas fa-syringe"></i>
						</a>
					</h1>
					<!-- //logo -->
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
						<ul class="navbar-nav ml-lg-auto">
							<li class="nav-item active mt-lg-0 mt-3">
								<a class="nav-link" href="index.html">Home
									<span class="sr-only">(current)</span>
								</a>
							</li>
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="resources/web/about.html">About Us</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
								    aria-haspopup="true" aria-expanded="false">
									Pages
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">

									<a class="dropdown-item scroll" href="#services">Services</a>
									<a class="dropdown-item" href="resources/web/gallery.html">Screenshots</a>
									<a class="dropdown-item scroll" href="#blog">Team</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="resources/web/single.html">Single Page</a>
								</div>
							</li>
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="appointment.html">Appointment</a>
							</li>
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="">Patients</a>
							</li>
							<li class="nav-item mx-lg-4 my-lg-0 my-3">
								<a class="nav-link" href="resources/web/doctors.html">Doctors</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="resources/web/contact.html">Contact Us</a>
							</li>
						</ul>
						<!-- login -->
						<a href="createEvent.jsp" class="login-button ml-lg-5 mt-lg-0 mt-4 mb-lg-0 mb-3" data-toggle="modal" data-target="#exampleModalCenter1">
							<i class="fas fa-sign-in-alt mr-2"></i>Staff Login</a>
						<!-- //login -->
					</div>
				</div>
			</nav>
		</div>
		<!-- //navigation -->
		<!-- modal -->
		<!-- login -->
		<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header text-center">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="login px-4 mx-auto mw-100">
							<h5 class="text-center mb-4">Login Now</h5>
							<form action="#" method="post">
								<div class="form-group">
								<form action="drop" method="POST">
        <input type="submit" value="Drop all data"  style="border: 3px solid #FF0000;position: fixed; bottom: 0; right: 0"><br/>
    </form>
    <c:choose>
        <c:when test="${username == null}">
            <h2><a href="register">Link to Register</a></h2>

            <c:if test="${auth != null}">
                <span style="color: darkred;font-style: italic"><strong>Incorrect username or password!</strong></span>
            </c:if>
            <form action="home" method="POST">
									<label>Your Name</label>
									<input type="text" class="form-control" name="username" placeholder="" required="">
								</div>
								<div class="form-group">
									<label class="mb-2">Password</label>
									<input type="password" class="form-control" name="password" placeholder="" required="">
								</div>
								<button type="submit" value ="login" class="btn submit mb-4">Login</button>
								<p class="forgot-w3ls text-center pb-4">
									</c:when>
        <c:otherwise>
            <form action="userEvents" method="POST">
                <input type="submit"Value="User Page">
            </form>
            <form action="logout" method="POST">
                <input type="submit" value="Log out"><br/><br/>
            </form>
            </form>
 </c:otherwise>
    </c:choose>
    <c:choose>
        <c:when test="${events != null}">
            <em style="color: gray;"><strong>Showing All Events</strong></em><br/>
            <c:forEach var="event" items="${events}">
                <br/>
                Event Id: <c:out value="${event.id}"></c:out> <br/>
                Event: <c:out value="${event.eventName}"></c:out> <br/>
                Date: <c:out value="${event.eventDate}"></c:out> <br/>
                Description: <c:out value="${event.eventDescription}"></c:out> <br/>
                Creator: <c:out value="${event.eventAuthor}"></c:out> <br/>
                <c:set var="eName" scope="session" value="${event.eventName}"/>
                <c:if test="${(event.eventAuthor != sessionScope.username && sessionScope.username != null) && !fn:contains(likedEvents, event.id)}">
                <form action="userEvents/likedEvent" method="POST">
                    <input type="hidden" name="it" value="${event.id}"/>
                    <input type="submit" value="Like">
                    <br/>
                </form>
                </c:if>
            </c:forEach>
        </c:when>
    </c:choose>
								</p>
								<p class="account-w3ls text-center pb-4">
									Don't have an account?
									<a href="jsp/view/registerSuccess.jsp" data-toggle="modal" data-target="#exampleModalCenter2">Create one now</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //login -->
		<!-- register -->
		<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content modal-content-2">
					<div class="modal-header text-center">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="login px-4 mx-auto mw-100">
							<h5 class="text-center mb-4">Register Now</h5>
							<form:form method="POST" action="register" modelAttribute="user">
								<div class="form-group">
									<label path=""> Username *: </label>
									<input type="text" class="form-control" name="username" placeholder="" required="">
									<c:if test="${unameEmpty == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>Username cannot be empty!</strong></span>
            </c:if>
                <%-- In the case the username is not unique --%>
            <c:if test="${duplicate == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>That username is already taken!</strong></span>
            </c:if>
           
								</div>
								<%-- In the case the username is blank --%>
            
								<div class="form-group">
									<label path="e_mail">E-mail: </label>
									<input type="email" class="form-control" name="email" placeholder="" required="">
								</div>
								<div class="form-group">
									<label path="password">Password *: </label>
									<input type="password" class="form-control" name="password" id="password" placeholder="" required="">
									<c:choose>
            <c:when test="${passMatch == \"false\"}">
                <span style="color: darkred;font-style: italic"><strong>Passwords must match!</strong></span>
            </c:when>
                <%-- In the case the passwords are empty --%>
            <c:when test="${passEmpty == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>Password cannot be empty!</strong></span>
            </c:when>
            <c:otherwise></c:otherwise></c:choose>
								</div>
								
         
								<div class="form-group">
									<label path="password2">Password (repeat)*: </label>
									<input type="password" class="form-control" name="password" id="password2" placeholder="" required="">
									<c:if test="${pass2Empty == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>Password cannot be empty!</strong></span>
            </c:if>
								</div>
								
                                  <div class="form-group">
									<label path="first_name">First name *: </label>
									<input type="first_name" class="form-control" name="First Name" placeholder="" required="">
									<c:if test="${fnameEmpty == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>Must include first name!</strong></span>
            </c:if>
								</div>
								
								<div class="form-group">
									<label path="last_name">Last name *: </label>
									<input type="last_name" class="form-control" name="Last Name" placeholder="" required="">
									<c:if test="${lnameEmpty == \"true\"}">
                <span style="color: darkred;font-style: italic"><strong>Must include last name!</strong></span>
            </c:if>
								</div>
								
								<button type="submit" class="btn btn-primary submit mb-4">Register</button>
								<p class="text-center pb-2">
									<a href="#" class="text-white">By clicking Register, I agree to your terms</a>
								</p>
	
							</form:form>
	    <h1>Congratulations ${fname}</h1>
	    <h2>You have successfully registered!</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- //register -->
		<!-- //modal -->
	</div>
	<!-- //header 2 -->

	<!-- banner -->
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides callbacks callbacks1" id="slider4">
				<li>
					<div class="banner-top1">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3>Medical services that you
									<span>can trust</span>
								</h3>
								<p class="mt-3 mb-md-5 mb-3">Our highly skilled doctors are always there for you. You will not need a second opinion, ever!</p>
								<a href="about.html">Read More
									<i class="fa fa-caret-right ml-2" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-top2">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3>Medical excellence
									<span>every day</span>
								</h3>
								<p class="mt-3 mb-md-5 mb-3">Advanced medical equipment and state of the art medical facilities that will make the most accurate analysis for you.</p>
								<a href="about.html">Read More
									<i class="fa fa-caret-right ml-2" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="banner-top3">
						<div class="banner-info_agile_w3ls">
							<div class="container">
								<h3>The Hospital of the
									<span>future, today</span>
								</h3>
								<p class="mt-3 mb-md-5 mb-3">An online appointment scheduling application for the hospital staff to easily book an appointment with your doctors!</p>
								<a href="about.html">Read More
									<i class="fa fa-caret-right ml-2" aria-hidden="true"></i>
								</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- //banner -->
	<div class="clearfix"></div>

	<!-- banner bottom -->
	<div class="banner-bottom py-5">
		<div class="d-flex container py-xl-3 py-lg-3">
			<div class="banner-left-bottom-w3ls offset-lg-2 offset-md-1">
				<h6 class="text-white">We provide you with services of</h6>
				<h3 class="text-white my-3">Highly professional doctors</h3>
				<p>All specialists have extensive practical experience and regularly training courses in educational centers of the
					world.</p>
			</div>
			<div class="button">
				<a href="about.html" class="w3ls-button-agile">Read More
					<i class="fas fa-hand-point-right"></i>
				</a>
			</div>
		</div>
	</div>
	<!-- //banner bottom -->

	<!-- middle section -->
	<div class="w3ls-welcome py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="row">
				<div class="col-lg-5 welcome-right">
					<img src="resources/web/images/b2.png" alt=" " class="resources/web/img-fluid">
				</div>
				<div class="col-lg-7 welcome-left mt-4">
					<h3>Bid farewells to heavy files!</h3>
					<h6 class="mt-3">A hassle-free appointment scheduling mechanism</h6>
					<h4 class="my-4 font-italic">In the era of computing, reserving appointments manually seems ludicrous. That is the exact problem we tried attacking!</h4>
					<div class="readmore-w3-agileits mt-md-5 mt-4">
						<a href="single.html" class="w3ls-button-agile text-dark">View Some More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //middle section -->

	<!-- services -->
	<div class="why-choose-agile pt-5" id="services">
		<div class="container pt-xl-5 pt-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Our Best Services</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				<p class="mt-2">Here are some of the features of our service</p>
			</div>
			<div class="row why-choose-agile-grids-top">
				<div class="col-lg-4 agileits-w3layouts-grid">
					<div class="row wthree_agile_us">
						<div class="col-3 agile-why-text p-0 text-right">
							<div class="wthree_features_grid">
								<i class="fas fa-user-md"></i>
							</div>
						</div>
						<div class="col-9 agile-why-text-2">
							<h4 class="text-dark font-weight-bold mb-3">Appointment Scheduler</h4>
							<p>A quick interface for hospital staff to book appointments.</p>
						</div>
					</div>
					<div class="row wthree_agile_us my-5">
						<div class="col-3 agile-why-text p-0 text-right">
							<div class="wthree_features_grid">
								<i class="fas fa-syringe"></i>
							</div>
						</div>
						<div class="col-9 agile-why-text-2">
							<h4 class="text-dark font-weight-bold mb-3">Patient Profiles</h4>
							<p>Patient profiles with all the important information that the hospital might need.</p>
						</div>
					</div>
					
				</div>
				<div class="col-lg-4 agileits-w3layouts-grid img text-center">
					<img src="resources/web/images/b3.png" alt=" " class="img-fluid" />
				</div>
				<div class="col-lg-4 agileits-w3layouts-grid">
					<div class="row wthree_agile_us">
						<div class="col-9 agile-why-text-2">
							<h4 class="text-dark font-weight-bold mb-3">Appointment Notifications</h4>
							<p>Notification to the patients prior to their appointments.</p>
						</div>
						<div class="col-3 agile-why-text p-0">
							<div class="wthree_features_grid">
								<i class="fas fa-medkit"></i>
							</div>
						</div>
					</div>
					<div class="row wthree_agile_us my-5">
						<div class="col-9 agile-why-text-2">
							<h4 class="text-dark font-weight-bold mb-3">User Friendly Interface</h4>
							<p>A user friendly interface that lets you navigate the application with ease and use it to its fullest capacity!</p>
						</div>
						<div class="col-3 agile-why-text p-0">
							<div class="wthree_features_grid">
								<i class="fas fa-wheelchair"></i>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->
	
	
	<!-- blog -->
	<div class="blog-w3ls py-5" id="blog">
		<div class="container py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title text-white">The Incredible Coders</h3>
				<span>
					<i class="fas fa-user-md text-white"></i>
				</span>
				<p class="mt-2 text-white"></p>
			</div>
			<div class="row package-grids mt-5">
				<div class="col-md-4 pricing">
					<div class="price-top">
						<a href="single.html">
							<img src="resources/web/images/blog1.jpg" alt="" class="img-fluid" />
						</a>
						<h3>13
							<span>August</span>
						</h3>
					</div>
					<div class="price-bottom p-4">
						<h4 class="text-dark mb-3">Sit voluptatem accusantium doloremque</h4>
						<a href="single.html">
							<i class="fas fa-user mr-2"></i>Posted by accusantium</a>
					</div>
				</div>
				<div class="col-md-4 pricing my-md-0 my-5">
					<div class="price-top">
						<a href="single.html">
							<img src="resources/web/images/blog2.jpg" alt="" class="img-fluid" />
						</a>
						<h3>24
							<span>August</span>
						</h3>
					</div>
					<div class="price-bottom p-4">
						<h4 class="text-dark mb-3">Sit voluptatem accusantium doloremque</h4>
						<a href="single.html">
							<i class="fas fa-user mr-2"></i>Posted by accusantium</a>
					</div>
				</div>
				<div class="col-md-4 pricing">
					<div class="price-top">
						<a href="single.html">
							<img src="resources/web/images/blog3.jpg" alt="" class="img-fluid" />
						</a>
						<h3>30
							<span>August</span>
						</h3>
					</div>
					<div class="price-bottom p-4">
						<h4 class="text-dark mb-3">Sit voluptatem accusantium doloremque</h4>
						<a href="single.html">
							<i class="fas fa-user mr-2"></i>Posted by accusantium</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //blog -->

	<!-- treatments -->
	<div class="screen-w3ls py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="w3ls-titles text-center mb-5">
				<h3 class="title">Best Treatments</h3>
				<span>
					<i class="fas fa-user-md"></i>
				</span>
				<p class="mt-2">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<div class="row">
				<div class="col-lg-6 w3ls-wthree-screen text-center">
					<img src="resources/web/images/b5.png" alt="" class="img-fluid">
				</div>
				<div class="col-lg-6 w3ls-wthree-texts mt-5">
					<div class="row icons-screen">
						<div class="col-3 screen-agile text-right">
							<i class="fas fa-syringe"></i>
						</div>
						<div class="col-9 screen-agile-2">
							<h5 class="mb-3">Oxygen therapy</h5>
							<p>Incididunt ut labore et dolore magna aliqua, sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
					<div class="row icons-screen mt-5">
						<div class="col-3 screen-agile text-right">
							<i class="fab fa-medrt"></i>
						</div>
						<div class="col-9 screen-agile-2">
							<h5 class="mb-3">Medical procedure</h5>
							<p>Incididunt ut labore et dolore magna aliqua, sed do eiusmod tempor incididunt ut</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //treatments -->

	<!-- footer -->
	<footer>
		<div class="w3ls-footer-grids pt-sm-4 pt-3">
			<div class="container py-xl-5 py-lg-3">
				<div class="row">
					<div class="col-md-4 w3l-footer">
						<h2 class="mb-sm-3 mb-2">
							<a href="index.html" class="text-white font-italic font-weight-bold">
								<span>M</span>edic
								<i class="fas fa-syringe ml-2"></i>
							</a>
						</h2>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
							aperiam,
							eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
					</div>
					<div class="col-md-4 w3l-footer my-md-0 my-4">
						<h3 class="mb-sm-3 mb-2 text-white">Address</h3>
						<ul class="list-unstyled">
							<li>
								<i class="fas fa-location-arrow float-left"></i>
								<p class="ml-4">The company name
									<span>Lorem ipsum dolor,</span>New York,Morris Park. </p>
								<div class="clearfix"></div>
							</li>
							<li class="my-3">
								<i class="fas fa-phone float-left"></i>
								<p class="ml-4">1234567890</p>
								<div class="clearfix"></div>
							</li>
							<li>
								<i class="far fa-envelope-open float-left"></i>
								<a href="mailto:info@example.com" class="ml-3">mail@example.com</a>
								<div class="clearfix"></div>
							</li>
						</ul>
					</div>
					<div class="col-md-4 w3l-footer">
						<h3 class="mb-sm-3 mb-2 text-white">Quick Links</h3>
						<div class="nav-w3-l">
							<ul class="list-unstyled">
								<li>
									<a href="index.html">Home</a>
								</li>
								<li class="mt-2">
									<a href="about.html">About Us</a>
								</li>
								<li class="mt-2">
									<a href="resources/web/gallery.html">Gallery</a>
								</li>
								<li class="mt-2">
									<a href="appointment.html">Appointment</a>
								</li>
								<li class="mt-2">
									<a href="contact.html">Contact Us</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="border-top mt-5 pt-lg-4 pt-3 pb-lg-0 pb-3 text-center">
					<p class="copy-right-grids mt-lg-1">© 2018 Medic. All Rights Reserved | Design by
						<a href="https://w3layouts.com/" target="_blank">W3layouts</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->


	<!-- Js files -->
	<!-- JavaScript -->
	<script src="resources/web/js/jquery-2.2.3.min.js"></script>
	<!-- Default-JavaScript-File -->

	<!-- banner slider -->
	<script src="resources/web/js/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});
		});
	</script>
	<!-- //banner slider -->

	<!-- fixed navigation -->
	<script src="resources/web/js/fixed-nav.js"></script>
	<!-- //fixed navigation -->

	<!-- smooth scrolling -->
	<script src="resources/web/js/SmoothScroll.min.js"></script>
	<!-- move-top -->
	<script src="resources/web/js/move-top.js"></script>
	<!-- easing -->
	<script src="resources/web/js/easing.js"></script>
	<!--  necessary snippets for few javascript files -->
	<script src="resources/web/js/medic.js"></script>

	<script src="resources/web/js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->

	<!-- //Js files -->

</body>

</html>
