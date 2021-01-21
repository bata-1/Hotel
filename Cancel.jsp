<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name = "viewport" content = "width=device-width,initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">

<title>Cancel</title>
</head>

<style>
	.container-fluid{
		margin-bottom : 100px;
	}
</style>

<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("button").on("click", function(e){
			e.preventDefault();
			$.ajax({
				type: 'GET',
				url: "/HotelProject/cancelUser",
				contentType: "application/json",
				data: {
					"emailAddress": $('#emailAddress').val(),
					"reservationId": $('#reservationId').val()

				},
				success: function(json){
						alert(json);
				},
				error: function(result){
					console.log(this.data);
				}
			});
		});
	});
</script>

<body>

<jsp:include page="/Header.jsp"/>

<div class="d-flex align-items-center col-md-4 col-md-offset-4">
	<div class = "container-fulid">

		<table class = "table">
			<br><br>
			<h2>Cancel Page</h2>

			<tr>
				<td>Enter EmailAddress :</td>
				<td><input id="emailAddress" type=text/></td>
			</tr>
			<tr>
				<td>Enter booking / reservation id :</td>
				<td><input id="reservationId" type=text/></td>
			</tr>
		</table>

		<div class = "container-fluid">
			<tr>
				<td colSpan=2>
					<button type = "button" class = "btn btn-default btn-lg">Submit</button>
				</td>
			</tr>
		</div>


	</div>
</div>
<div style="margin-bottom:300px;"></div>

<jsp:include page="/Footer.jsp"/>

</body>
</html>