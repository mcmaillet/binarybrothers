<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class='fullnavwrap'>
	<div class='bluetop'>&nbsp;</div>
	<div class='div-nav-wrap'>
		<div class='div-nav'>
			<ul class="menu menu-hover-lines">
				<li <%if (session.getAttribute("CURRENTPAGE") == "index") {%>
					class="active" <%}%>><a href="index.jsp">Home</a></li>
				<li <%if (session.getAttribute("CURRENTPAGE") == "aboutus") {%>
					class="active" <%}%>><a href="aboutus.jsp">About Us</a></li>
				<li <%if (session.getAttribute("CURRENTPAGE") == "contact") {%>
					class="active" <%}%>><a href="contact.jsp">Contact</a></li>
			</ul>
		</div>
	</div>
	<div class='bluetop'>&nbsp;</div>
</div>