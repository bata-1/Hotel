<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=ISO-8859-1">

<meta name = "viewport" content = "width=device-width,initial-scale=1">
<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
    <script src="assets/js/jquerysession.js"></script>

<title>newlogin</title>
<style>
	.box{
	border:1px solid black;
	margin-left:100px;
	}
</style>
</head>
<script>
	$(document).ready(function() {
		$("#login").on("click", function(e){
			e.preventDefault();
			$.ajax({
				type: 'GET',
				url: "/HotelProject/checkLoginUser",
				contentType: "application/json",
				data: {
					"emailaddress": $('#emailaddress2').val(),
					"password": $('#password2').val()

				},
				success: function(json){
					//alert(json);
					if(json == "Login Successful"){
						$("#modal").html="<p>"+json+"</p>";
						//alert($('#emailaddress').val());
						$.session.set("checkUser",$('#emailaddress2').val());
						//alert($('#emailaddress').val());
						window.location.href ="/HotelProject/index.jsp";
					}else{
						document.getElementById("modalbody").innerHTML="<button type='button' class='close' data-dismiss='modal'>&times;</button>"+json;
						document.getElementById("modal").click();
					}
				},
				error: function(result){
					console.log(this.data);
				}
			});
		});

		$("#signup").on("click", function(e){
			e.preventDefault();
			if( (!($('#emailAddress').val() == "")) &&
			    (!($('#password').val() == "")) &&
			    ($('#phoneNumber').val().match(/^[0-9]+$/)) ){

				$.ajax({
					type: 'GET',
					url: "/HotelProject/hotel_project_signUp",
					contentType: "application/json",
					data: {
						"emailAddress": $('#emailAddress').val(),
						"password"    : $('#password').val(),
						"phoneNumber" : $('#phoneNumber').val()
					},
					success: function(json){
						//alert("hello");
						document.getElementById("modalbody").innerHTML="<button type='button' class='close' data-dismiss='modal'>&times;</button>"+json;
						document.getElementById("modal").click();
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
		 $("#myModal").on("show", function() {    // wire up the OK button to dismiss the modal when shown
		        $("#myModal a.btn").on("click", function(e) {
		            console.log("button pressed");   // just as an example...
		            $("#myModal").modal('hide');     // dismiss the dialog
		        });
		    });

		    $("#myModal").on("hide", function() {    // remove the event listeners when the dialog is dismissed
		        $("#myModal a.btn").off("click");
		    });

		    $("#myModal").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
		        $("#myModal").remove();
		    });

		    $("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
		        "backdrop"  : "static",
		        "keyboard"  : true,
		        "show"      : true                     // ensure the modal is shown immediately
		    });
	});
</script>
<body>

<jsp:include page="/Header.jsp"/>
<div style="margin-bottom:100px;"></div>
<div class="container">
<div class="row">
    <div class="col-sm-4" style="background-color:rgb(154,157,112)" style="margin-top:100px">
    <h2>Sign Up</h2>
		<table class="table table-striped">
			<tr>
				<td><input id="emailAddress" type="email"  placeholder="Email Address"></td>
			</tr>
			<tr>
				<td><input id="password" type="password" placeholder="Password"></td>
			</tr>
			<tr>
				<td><input id="phoneNumber" type="text"  placeholder="Phonenumber"></td>
			</tr>
<tr>
				<td colSpan=2>
					<center><button type = "button" class="btn btn-info btn-lg"  id="signup">Submit</button></center>
				</td>
			</tr>
		</table></div>
    <div class="col-sm-4" >
 </div>
    <div class="col-sm-4" style="background-color:rgb(154,157,112);" style="margin-top:100px"><h2>Login</h2>

		<table class = "table">
			<tr>
				<td><input id="emailaddress2"  type=text placeholder="Email Address"></td>
			</tr>
			<tr>
				<td><input id="password2"  type="password" placeholder="Password"></td>
			</tr>
				<tr>
				<td colSpan=2>
					<center><button type = "button" class = "btn btn-default btn-lg" id="login">Submit</button></center>
				</td>
			</tr>
		</table>

		<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- dialog body -->
            <div class="modal-body" id="modalbody">
            </div>
            <!-- dialog buttons -->
            <div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal">OK</button></div>
        </div>
    </div>
</div>




</div>
  </div>
</div>

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="display:none" id="modal"></button>

<jsp:include page="/Footer.jsp"/>

</body>
</html>

