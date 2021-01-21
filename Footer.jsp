<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="assets/js/jquerysession.js"></script>

<script>
$(document).ready(function(){

	$("#LogoutButton").on("click", function(e){
		$.session.clear();
		 document.getElementById("LogoutButton").style.display = "none";
		 location.reload(true);
	});
					var setLogin=$.session.get("checkUser");
					//alert(setLogin);
					if(setLogin==undefined)
					{
						$("#spanLogin").text("SignUp / Login");
						 document.getElementById("LogoutButton").style.display = "none";

					}
					else{
						//alert("this is there");

						  document.getElementById("LogoutButton").style.display = "visible";

						//$("#spanLogin").innerHTML=setLogin+"<a href = 'logout.jsp' class = 'width'>Logout</a>";
					}

					//alert($("#spanLogin").text());
					});



		</script>
<footer id="myFooter" style="margin-top:30px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                   <img src = "image/hotel_icon.png"  alt = "icon" class = "image2">
                </div>
                <div class="col-sm-2">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="facility.jsp">Facility</a></li>

                    </ul>
                </div>
                <div class="col-sm-2">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="#">Company Information</a></li>
                        <li><a href="Event.jsp">Events</a></li>
   						  <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-sm-2">
                    <button id="LogoutButton"  type = "button"  class="btn btn-info btn-block">LogOut</button>
                </div>
                <div class="col-sm-3">
                    <div class="social-networks">
                        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <p>© 2016 Copyright Text </p>
        </div>
    </footer>