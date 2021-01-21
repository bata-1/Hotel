<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="CONTENT-TYPE" content="text/html; charset=utf-8">
<title>room</title>


		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapins.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel ="stylesheet" type="text/css" href="room.css">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">

			   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
		<link rel="stylesheet" href="HeaderAndFooter.css">

		<style>
			.row1 h2{
		   	color:white;
		   }
		   .row1{
		   	background-color:rgb(154,157,112);
		   }
		</style>

</head>
<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>



	$(function() {
		  $('.open').on('click', function() {
		    $('#overlay, #modalWindow').fadeIn();
		  });

		  $('#close').on('click', function() {
		    $('#overlay, #modalWindow').fadeOut();
		  });

		  locateCenter();
		  $(window).resize(locateCenter);

		  function locateCenter() {
		    let w = $(window).width();
		    let h = $(window).height();

		    let cw = $('#modalWindow').outerWidth();
		    let ch = $('#modalWindow').outerHeight();

		    $('#modalWindow').css({
		      'left': ((w - cw) / 2) + 'px',
		      'top': ((h - ch) / 2) + 'px'
		    });
		  }

	});

	function roomgrade(grade){
		$.ajax({
			type: 'GET',
			url: "/HotelProject/hotel_project_room?grade="+grade,
			contentType: "application/json",
			success: function(json){

				$('#popup-content').html
					   ('<br><label>number_of_beds:'+json[0].number_of_beds+'</label><br>'+
						'<label>bed_size:'+json[0].bed_size+'</label><br>'+
						'<label>room_grade:'+json[0].room_grade+'</label><br>'+
						'<label>room_type:'+json[0].room_type+'</label><br>'+
						'<label>price:'+json[0].price+'</label><br><br>');
				console.log("console.log json : " + json);
			}
		});
	}


</script>
<body>

<jsp:include page="/Header.jsp"/>


	<div class = "container-fulid">

		<br><br>
		<center><h2>Room</h2></center>
		<br><br>

		<center><div class="picture">
			<div class="row1">
			<div><h2 >Single</h2></div>
			<div class="clear"></div>


				<div class="pic1" >
					<div class="btn-open">
						<img src="image/single_standard.png" alt="single_standard"
							width="300" height="167">
					</div>

					<div class="pop-box">
						<center>
							<h2>Standard</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Standard')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='input.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>


				<div class="pic2">
					<div class="btn-open">
						<img src="image/single_superior.png" alt="single_superior"
							width="300" height="167" >
					</div>

					<div class="pop-box">
						<center>
							<h2>Superior</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Superior')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='signup.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>


				<div class="pic3">
					<div class="btn-open">
						<img src="image/single_deluxe.png" alt="single_deluxe"
							width="300" height="167">
					</div>

					<div class="pop-box">
						<center>
							<h2>Deluxe</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Deluxe')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='signup.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>

			</div>



			<br><br>


			<div class="row1">
				<div><h2>Double</h2></div>

				<div class="pic1">
					<div class="btn-open">
						<img src="image/double_standard.png" alt="double_standard"
							width="300" height="167">
					</div>

					<div class="pop-box">
						<center>
							<h2>Standard</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Standard')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='signup.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>


				<div class="pic2">
					<div class="btn-open">
						<img src="image/double_superior.png" alt="double_superior"
							width="300" height="167">
					</div>

					<div class="pop-box">
						<center>
							<h2>Superior</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Superior')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='signup.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>


				<div class="pic3">
					<div class="btn-open">
						<img src="image/double_deluxe.png" alt="double_deluxe"
							width="300" height="167">
					</div>

					<div class="pop-box">
						<center>
							<h2>Deluxe</h2>
							<button type = "submit" class="open" onclick = "roomgrade('Deluxe')">Details</button>
							<div id="overlay"></div>
							<div id="modalWindow">

								<label id="close" class="icon-close">×</label>

								<div id="popup-content">

								</div>

								<center>
									<button id="close" onclick="location.href='signup.jsp'">
										Reservation
									</button>
								</center>

							</div>
						</center>
					</div>
				</div>

			</div>

		</div></center>

	</div>
<jsp:include page="/Footer.jsp"/>

</body>
</html>

