<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>

<title>Upcoming</title>

<style>
	.container-fluid{
		margin-bottom : 70px;
	}
	.color{
	background-color:rgb(154,157,112);
	}
</style>

<meta charset="UTF-8">
<meta name = "viewport" content = "width=device-width,initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
<script>

	$(function() {
		$.ajax({
			type: 'GET',
			url: "/HotelProject/upcoming",
			contentType: "application/json",
			success: function(json){
				var table = $("#upcomingTable");
				console.log(json);
				table.find("tr:gt(0)").remove();

				for (  var i = 0;  i < json.length;  i++  ) {
					var columnData
					  = "<td>" + json[i].eventName + "</td>"+
						"<td>" + json[i].eventFromDate + "</td>"+
						"<td>" + json[i].eventToDate + "</td>"+
						"<td>" + json[i].description + "</td>";

					var row = "<tr>" + columnData + "</tr>"
					table.append(row);
				}
			}
		});
	});


</script>



</head>
<body>

<jsp:include page="/Header.jsp"/>

<div class="d-flex align-items-center col-md-8 col-md-offset-2">
	<div class = "container-fluid">
	<div class="row">
		<table class = "table" id="upcomingTable" frame="box" border = "2px">
			<br><br>

			<h2>Upcoming Events</h2>

			<br>

			<tr>
				<td class="color"><b>Event Name  </b></td>
				<td class="color"><b>Event From Date  </b></td>
				<td class="color"><b>Event To Date  </b></td>
				<td class="color"><b>Description  </b></td>
			</tr>
		</table>

	</div>
	</div>
</div>

<div style="margin-bottom:300px;"></div>

<jsp:include page="/Footer.jsp"/>

</body>
</html>