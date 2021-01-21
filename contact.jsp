<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
			   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="HeaderAndFooter.css">
		<style>
			.clear{
			clear:both;
			}
			  .wrap{
			   width:90%;
			   display:flex;
			   justify-content: center;
			   flex-direction:row;
			   }
			   .ggmap {
				position: relative;
				padding-bottom: 56.25%;
				padding-top: 30px;
				height: 0;
				overflow: hidden;
				}

				.ggmap iframe,
				.ggmap object,
				.ggmap embed {
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				}
				.map{
				width:40%;
				}
				.tel{
				width:40%;
				margin: 0 40px;
				}
				.form{
				background-color:rgb(154,157,112);
				margin-top:70px;
				}
				.text{
				float:left;
				width:20%;
				}
				.input{
				padding:15px;
				}
				.button{
				margin-top:40px;
				}



		</style>

		<script>
		$(document).ready(function() {
			$("button").on("click", function(e){
				e.preventDefault();
				$.ajax({
					type: 'POST',
					url: "/HotelProject/contact",
					contentType: "application/json",
					data: JSON.stringify({
						"name": $('#name').val(),
						"emailAddress": $('#email').val(),
						"phoneNumber": $('#phone').val(),
						"comments": $('#comments').val(),
					}),
					success: function(json){
						alert(json);
						}
				});
			});
		});
		</script>

	</head>
	<body>
	<jsp:include page="/Header.jsp" />
		<div class="container-fulid">
			<center><h2>Contact</h2></center>
			<div class="wrap">
				<div class="map">
					<div class="ggmap"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d43993.59095383981!2d77.64263015066312!3d12.938490713594113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sja!2sin!4v1553060722272"
					width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
				</div>
				<div class="tel">
				<h4>TEL:xxx-xxx-xxx</h4>
				<h4>ADDRESS:xxx-xxx-xxx</h4>
				<center><div class="form">
				<div class="input"><input type="text"  id=name class="form-control mb-4" placeholder="Name"></div>

				<div class="input"><input type="text" id=email  class="form-control mb-4" placeholder="Email"></div>

				<div class="input"><input type="number" id=phone  class="form-control mb-4" placeholder="PhoneNumber"></div>

					<div class="input"><div class="form-group">
       				 	<textarea class="form-control rounded-0" id="comments" rows="3" placeholder="Message"></textarea>
    				</div></div>
				<button class="btn btn-info btn-block">Submit</button></div>
			</div></center>
				</div>
			</div>

		</div>
			<jsp:include page="/Footer.jsp" />
	</body>
</html>