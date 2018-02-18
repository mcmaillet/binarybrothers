<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.setAttribute("CURRENTPAGE", "aboutus");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<link rel="stylesheet" type="text/css" href="css/aboutus.css">
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
			<h1>About us</h1>
			<h3>Our mission statement</h3>
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
		<div class="aboutuswrap">Like many Canadians, we love to ski. We
			also believe that waking up at the crack of dawn should only be
			reserved for proper conditions. That’s why we’re bringing certainty
			to the slopes with Binary Brothers. Here you can find up-to-date
			information on your favorite slopes, from snowfall trends to
			temperature and humidity. Subscribe to our messaging service to
			receive updates, and never miss a powder day again. Our predictive
			software will also update you on where and when avalanche conditions
			may occur, or what conditions you should wax for. So enjoy your
			winter, and never waste a drive and ticket on a bad ski day again.</div>
	</div>
	<div class='bluetop'>&nbsp;</div>
	<jsp:include page="footer.jsp" />
</body>
</html>