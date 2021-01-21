<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Infinity | By Distinctive Themes">
    <meta name="author" content="Distinctive Themes">
    <link rel="shortcut icon" href="assets/img/favicon.ico">
	<head>
	<link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/elusive-webfont.css" rel="stylesheet" >
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/pe-icons.css" rel="stylesheet">
 	<link href="assets/css/style.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Raleway:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>

    <script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/modernizr.custom.js"></script>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
			   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="popup.css">
<script>
function check(eventName){
	$.ajax({
		type:"POST",
		url:"/HotelProject/checkEvent?eventName="+eventName,
		contentType:"application/json",

		success:function(json){
			console.log(json);
			  captionText.innerHTML = json;

		}
	});
}

</script>
		<style>
		/*CSS property for nevigation menu */
		  .clear{
			clear:both;
			}
		.pic1,.pic2,.pic3{
			   float: left;
			   width: 33%;
			   padding: 15px;
			   text-align:justify;
			   }
			   .check{
			   width:66%;
			   background-color:grey;
			   height:200px;
			   }
			   .picture{
			   width:90%;
			   height:1000px;
			   }
			   .Room{
			   height:50%
			   }
			   .Event{
			   height:50%;
			   }
				body {font-family: Arial, Helvetica, sans-serif;}

#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation */
.modal-content, #caption {
  -webkit-animation-name: zoom;
  -webkit-animation-duration: 0.6s;
  animation-name: zoom;
  animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
  from {-webkit-transform:scale(0)}
  to {-webkit-transform:scale(1)}
}

@keyframes zoom {
  from {transform:scale(0)}
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}

.img{
	margin-top:20px;
	margin-bottom:15px;
	border:1px solid black;
}
p{
	font-size: 25px;
}
</style>
</head>
<body>
<jsp:include page="/Header.jsp" />
<div class="container">

<center><h2>Event</h2></center>

<div class="row white">
				<hr class="fade-down divider-spacer">
				<div class="col-md-4 col-sm-4">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Swimming Pool</h2></center>
						<img id="myImg" src="image/Swimming_competition.jpg" alt="Snow" onclick="getImage('Swimming competition','Swimming_competition');check('Swimming competition')" style="width:200px;max-width:300px">
						<p>We swim and play with beach balls.</p>
						</div></div>

<div class="col-md-4 col-sm-4">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Badminton</h2></center>
<img id="myImg" src="image/Badminton_tournament.jpg" alt="Hotel picture 2" onclick="getImage('Badminton tournament','Badminton_tournament');check('Badminton tournament')" style="width:200px;max-width:300px">
<p>We can enjoy playing badminton</p>
</div></div>


<div class="col-md-4 col-sm-4">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Yoga</h2></center>
<img id="myImg" src="image/Yoga_course.jpg" alt="Hotel picture 3" onclick="getImage('Yoga course','Yoga_course');check('Yoga course')" style="width:200px;max-width:300px">

<p>
You can experience yoga</p>
</div></div>
<div style="clear:both"></div>

<div class="col-md-4 col-sm-4" align="left">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Festival</h2></center>
<img id="myImg" src="image/Indian_festival.jpg" alt="Hotel picture 3" onclick="getImage('Indian festival','Indian_festival');check('Indian festival')" style="width:200px;max-width:300px">
<p>
There is a festival where many people gather</p>
</div></div>
<div class="col-md-4 col-sm-4">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Wedding</h2></center>
<img id="myImg" src="image/Wedding.jpg" alt="Hotel picture 3" onclick="getImage('Wedding','Wedding');check('Wedding')" style="width:200px;max-width:300px">
<p>A wedding will be held</p>
</div></div>
<div class="col-md-4 col-sm-4">
					<div class="col-md-2 col-sm-2 col-xs-2 service-icon-wrapper bounce-in">
					</div>
					<div class="col-md-10 col-sm-10 col-xs-10 service-content fade-up">
					<center><h2>Holy festival</h2></center>
<img id="myImg" src="image/Holy_festival.jpg" alt="Hotel picture 3" onclick="getImage('Holy festival','Holy_festival');check('Holy festival')" style="width:200px;max-width:300px">
<p>There are a lot of fun in holy festival</p>
</div></div>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div>
</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");


var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
//img.onclick = function(){
  //modal.style.display = "block";
  //modalImg.src = this.src;
  //captionText.innerHTML = this.alt;
//}

function getImage(facilityName,imageSrc)
{
	modal.style.display = "block";
	var str="image/"+imageSrc+".jpg";
	  modalImg.src = str ;

	  //alert(str);
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
</script>
<jsp:include page="/Footer.jsp" />
</body>
</html>