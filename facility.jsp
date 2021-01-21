<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
			   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="HeaderAndFooter.css">
		<link rel="stylesheet" href="facility.css">
		<style>
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
}
p{
	font-size: 25px;
}
</style>
</head>
<body>
<jsp:include page="/Header.jsp" />
<div class="container">
<center><h2>Facility</h2></center>
<hr class="fade-down divider-spacer">
<table><tr>
<td>
<div class="col-sm-12 img">
<img id="myImg" src="image/hotelPicture1.png" alt="Snow" onclick="getImage('pool','hotelPicture1')" style="width:100%;max-width:300px">
</div></td>
<td><div class="col-sm-12">
<p>It is 1m deep and 30m x 30m wide. We swim and play with beach balls.</p>
</div>
</td>
</tr>
<tr>
<td>
<div class="col-sm-12 img">
<img id="myImg" src="image/hotelPicture2.png" alt="Hotel picture 2" onclick="getImage('gym','hotelPicture2')" style="width:100%;max-width:300px">
</div></td>
<td><div class="col-sm-12">
<p>There are many running machines and other training equipment.</p>
</div>
</td>
</tr>
<tr>
<td>
<div class="col-sm-12 img">
<img id="myImg" src="image/hotelPicture3.png" alt="Hotel picture 3" onclick="getImage('garden','hotelPicture3')" style="width:100%;max-width:300px">
</div></td>
<td><div class="col-sm-12">
<p>There are flowers and trees</p>
</div>
</td>
</tr>
<tr>
<td>
<div class="col-sm-12 img">
<img id="myImg" src="image/hotelPicture4.png" alt="Hotel picture 4" onclick="getImage('playground','hotelPicture4')" style="width:100%;max-width:300px">
</div></td>
<td><div class="col-sm-12">
<p>It is an open space with basketball goals. The basket is, of course, a space where you can kick the ball.</p>
</div>
</td>
</tr>
</table>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
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
	var str="image/"+imageSrc+".png";
	  modalImg.src = str ;

	  //alert(str);
	  captionText.innerHTML = facilityName;
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
