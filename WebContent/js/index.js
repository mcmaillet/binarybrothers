function getDataArray() {
	var dataArray = [];
	$.ajax({
		url : 'SnowServlet',
		timeout : 20000,
		async : false,
		cache : false,
		contentType : "application/json",
		type : 'GET',
		success : function(response) {
			$.each(response, function(index, snow) {
				dataArray.push(snow);
			});
		},
		error : function() {
			alert('Live feed of weather conditions disabled.');
		}
	});
	return dataArray;
};

function pollingTaskForRefresh() {
	doPollServlet();
	function doPollServlet() {
		getMoreData();
		setTimeout(doPollServlet, 5000);
	}
}
function getMoreData() {
	var moreData = [];
	$.ajax({
		url : 'SnowServlet',
		timeout : 20000,
		async : false,
		cache : false,
		contentType : "application/json",
		type : 'GET',
		success : function(response) {
			$.each(response, function(index, snow) {
				moreData.push(snow);
			});
		},
		error : function() {
			alert('An error was encountered. Contact admin.');
		}
	});
	updateData(moreData);
}
function updateData(moDat) {
	var daData = moDat;
	var xVal = [];
	var yValDistance = [];
	var yValHumidity = [];
	var yValTemperature = [];
	for (var i = 0; i < daData.length; i++) {
		xVal.push(new Date(daData[i].time * 1000));
		yValDistance.push(daData[i].distance);
		yValHumidity.push(daData[i].humidity);
		yValTemperature.push(daData[i].temperature);
	}
	window.snowChart.data.labels = xVal;
	window.snowChart.data.datasets[0].data = yValHumidity;
	window.snowChart.data.datasets[1].data = yValTemperature;
	window.snowChart.data.datasets[2].data = yValDistance;
	window.snowChart.update();
	window.snowChart.render();
	var $canvas = $("#snowChart");
	var $parent = $canvas.parent();
	$canvas.width($parent.width());
	$canvas.height($parent.height());
	window.snowChart.update();
}
function trimData(moDat) {
	var ind = 0;
	var lateDate = getLatestDate();
	for (var i = 0; i < moDat.length; i++) {
		var da = new Date(moDat[i].time * 1000);
		if (da >= lateDate) {
			return moDat.splice(i, moDat.length - 1);
		}
	}
	return moDat;
}
function getLatestDate() {
	return window.snowChart.data.labels[window.snowChart.data.labels.length - 1];
}