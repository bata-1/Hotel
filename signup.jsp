<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="CONTENT-TYPE" content="text/html; charset=ISO-8859-1"> -->

<title>signup hotel_project</title>

<meta charset="UTF-8">
<meta name = "viewport" content = "width=device-width,initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
<!--
<style type="text/css">
	.container-fluid{
		margin-left: 10px;
	}
</style>
-->

</head>
<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("button").on("click", function(e){
			e.preventDefault();
			if( (!($('#emailAddress').val() == "")) &&
			    (!($('#password').val() == "")) &&
			    ($('#phoneNumber').val().match(/^[0-9]+$/)) ){

				$.ajax({
					type: 'GET',
					url: "/hotel_project/hotel_project_signUp",
					contentType: "application/json",
					data: {
						"emailAddress": $('#emailAddress').val(),
						"password"    : $('#password').val(),
						"phoneNumber" : $('#phoneNumber').val()
					},
					success: function(json){
						alert(json);
						console.log(json);
					},
					error: function(json){
						console.log(this.data);
					}
				});
			}

			if($('#emailAddress').val() == ""){
				alert('Email address has not been entered.');
			}

			else if(!($('#emailAddress').val().match(/^[0-9a-zA-Z@.]+$/))){
				alert('Numeric, non-alphabetic and at mark values ​​have been entered in emailaddress.');
			}

			if($('#password').val() == ""){
				alert('Password has not been entered.');
			}

			if($('#phoneNumber').val() == ""){
				alert('Phone number has not been entered.');
			}

			else if(!($('#phoneNumber').val().match(/^[0-9]+$/))){
				alert('A non-numeric value has been entered in phonenumber.');
			}

		});
	});
</script>

<body>

<jsp:include page="/Header.jsp"/>



		<div class="container-fulid">
	<div class="d-flex align-items-center col-md-4 col-md-offset-4">



		<br><br><br>
		<h2>Sign Up Page</h2>
		<table class="table table-striped">
			<tr>
				<td>EmailAddress :</td>
				<td><input id="emailAddress" type="email" /></td>
			</tr>
			<tr>
				<td>password :</td>
				<td><input id="password" type="password" /></td>
			</tr>
			<tr>
				<td>phonenumber :</td>
				<td><input id="phoneNumber" type="text" /></td>
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


<br><br><br>

<jsp:include page="/Footer.jsp"/>


</body>
</html>