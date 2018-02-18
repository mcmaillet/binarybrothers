<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.setAttribute("CURRENTPAGE", "contact");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<link rel="stylesheet" type="text/css" href="css/contact.css">
</head>
<body>
	<jsp:include page="nav.jsp" />
	<div class="hero-full-screen">

		<div class="top-content-section">
			<div class="top-bar">
				<div class="top-bar-left"></div>
			</div>
		</div>

		<div class="maintext middle-content-section">
			<h1>Contact us</h1>
			<h3>We'd love to hear from you!</h3>
		</div>

		<div class="bottom-content-section" data-magellan data-threshold="0">
			<a href="#main-content-section"><svg
					xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24"> <path
					d="M24 12c0-6.627-5.373-12-12-12s-12 5.373-12 12 5.373 12 12 12 12-5.373 12-12zm-18.005-1.568l1.415-1.414 4.59 4.574 4.579-4.574 1.416 1.414-5.995 5.988-6.005-5.988z" /></svg></a>
		</div>

	</div>
	<div id="main-content-section"
		data-magellan-target="main-content-section">
		<div class='bluetop'>&nbsp;</div>
		<div class='bluetop'>&nbsp;</div>
		<div class='bluetop'>&nbsp;</div>
		<div class='contactwrap'>
			<div class='contactcontent'>
				<h2>We are:</h2>
				<h4>Mark Maillet</h4>
				<ul>
					<li>Software Developer</li>
					<li>University of Calgary graduate</li>
					<li>SAIT graduate</li>
					<li>mark.maillet@edu.sait.ca</li>
					<li><a href="https://github.com/mcmaillet" target="_blank">github.com/mcmaillet</a></li>
				</ul>
			</div>
			<div class='contactcontent'>
				<h4>Mo Xue</h4>
				<ul>
					<li>Software Developer</li>
					<li>University of British Columbia graduate</li>
					<li>SAIT graduate</li>
					<li>mo_xue1989@yahoo.ca</li>
					<li><a href="https://github.com/moxue1989" target="_blank">github.com/moxue1989</a></li>
				</ul>
			</div>
			<div class='contactcontent'>
				<h4>Angus Mathieson</h4>
				<ul>
					<li>Electrical Engineer</li>
					<li>University of Calgary attendee</li>
					<li>angusmath@gmail.com</li>
					<li><a href="https://github.com/AngusMath" target="_blank">github.com/AngusMath</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class='bluetop'>&nbsp;</div>
	<jsp:include page="footer.jsp" />
</body>
</html>