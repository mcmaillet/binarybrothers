<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%
	session.setAttribute("CURRENTPAGE", "index");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<link rel="stylesheet" type="text/css" href="css/index.css">
<script src="js/Chart.bundle.js"></script>
<script src="js/utils.js"></script>
<script src="js/index.js"></script>
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
			<h1>BinaryBot</h1>
			<h3>A ski hill condition monitoring system for those active
				outdoors.</h3>
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
		<center>
			<div class='div-chart'>
				<canvas id="snowChart" width="auto" height="auto"></canvas>
			</div>
			<script>
				(function() {
					var dataArray = getDataArray();
					var xVal = [];
					var yValDistance = [];
					var yValHumidity = [];
					var yValTemperature = [];
					for (var i = 0; i < dataArray.length; i++) {
						xVal.push(new Date(dataArray[i].time * 1000));
						yValDistance.push(dataArray[i].distance);
						yValHumidity.push(dataArray[i].humidity);
						yValTemperature.push(dataArray[i].temperature);
					}
					var ctx = document.getElementById("snowChart").getContext(
							'2d');
					window.snowChart = new Chart(ctx, {
						type : 'line',
						data : {
							labels : xVal,
							datasets : [ {
								label : 'Humidity',
								data : yValHumidity,
								backgroundColor : "rgba(100,255,100,.3)",
								borderColor : "rgba(100,255,100,1)",
								yAxisID : "y-ax-1"
							}, {
								label : 'Temperature',
								data : yValTemperature,
								backgroundColor : "rgba(255,100,100,.3)",
								borderColor : "rgba(255,100,100,1)",
								yAxisID : "y-ax-1"
							}, {
								label : 'Snow depth',
								data : yValDistance,
								backgroundColor : "rgba(100,100,255,1)",
								borderColor : "rgba(100,100,255,1)",
								fill : false,
								yAxisID : "y-ax-2"
							} ]
						},
						options : {
							scales : {
								yAxes : [ {
									ticks : {
										beginAtZero : true
									},
									type : "linear",
									position : "left",
									id : "y-ax-1",
									scaleLabel : {
										display : true,
										labelString : 'Temperature/Humidity'
									}
								}, {
									ticks : {
										beginAtZero : true
									},
									type : "linear",
									position : "right",
									id : "y-ax-2",
									scaleLabel : {
										display : true,
										labelString : 'Snow Depth'
									}
								} ],
								xAxes : [ {
									type : 'time',
									time : {
										unit : 'hour'
									}
								} ]
							}
						}
					});
					pollingTaskForRefresh();
				})();
				var $canvas = $("#snowChart");
				var $parent = $canvas.parent();
				$canvas.width($parent.width());
				$canvas.height($parent.height());
			</script>
		</center>
	</div>
	<div class='bluetop'>&nbsp;</div>
	<jsp:include page="footer.jsp" />
</body>
</html>