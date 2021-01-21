<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="assets/js/jquerysession.js"></script>

<script>
$(document).ready(function(){

					var setLogin=$.session.get("checkUser");
					//alert(setLogin);
					if(setLogin==undefined)
					{
						$("#spanLogin").text("SignUp / Login");
					}
					else{
						//alert("this is there");
						$("#spanLogin").text(setLogin);
					}
					//alert($("#spanLogin").text());

					//document.getElementById("booking").value="Booking";
					//document.getElementById("booking").text="New Booking";
					});

					function checklogin(){
						if($.session.get("checkUser")==undefined){
							window.location.href="/HotelProject/newlogin.jsp";
						}
					}

		</script>
<header>
<div class="container">
<div class="row">
<div class="col-sm-2" ><a href = "index.jsp">
				<img src = "image/hotel_icon.png"  alt = "icon" class = "image2">
			</a></div>
    <div class="col-sm-8" >

		<div class = "nav_menu">
			<a href = "room.jsp" class = "width">Room</a>
			<a href = "Event.jsp" class = "width">Event</a>
			<a href = "facility.jsp" class = "width">Facility</a>
			<a href = "meal.jsp" class = "width">Restaurant</a>
			<a href = "contact.jsp" class = "width">Contact</a>
		</div>

		<div class = "nav_menu2">
			<a onclick="checklogin()" class = "width" style="cursor : pointer;"><span id="spanLogin"></span></a>
			<a href = "upcoming.jsp" class = "width">Upcoming Events</a>
			<a href = "input.jsp" class = "width">Booking</a>


		</div>
 </div>
 <div class="col-sm-1" ></div>
 </div>

  </div>

</header>
