<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
			   <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="HeaderAndFooter.css">
<link rel="stylesheet" href="dropdown.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

		<style>
		/*CSS property for nevigation menu */
			.clear{
			clear:both;
			}
			  .wrap{
			   width:90%
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
			   height:300px;
			   }
			   .picture{
			   width:90%;
			   background-color:blue;
			   height:800px;
			   }
			   .Room{
			   height:50%
			   }
			   .Event{
			   height:50%;
			   }
			   /*スライドする複数イメージをぴったりと重ねます*/
				#slide{
				position:relative;
				width:40%;
				padding:15px;
				margin-left:400px;
				}
				#slide img{
				position:absolute;
				}

				.check .col-sm-4{
				margin-top:40px;
				}
				.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
		</style>

		<script type="text/javascript">

				$(function(){


					//（１）ページの概念・初期ページを設定
					var page=0;

					//（２）イメージの数を最後のページ数として変数化
					var lastPage =parseInt($("#slide img").length-1);

					//（３）最初に全部のイメージを一旦非表示にします
					     $("#slide img").css("display","none");

					//（４）初期ページを表示
					          $("#slide img").eq(page).css("display","block");

					//（５）ページ切換用、自作関数作成
					function changePage(){
					                         $("#slide img").fadeOut(1000);
					                         $("#slide img").eq(page).fadeIn(1000);
					};

					//（６）～秒間隔でイメージ切換の発火設定
					var Timer;
					function startTimer(){
					Timer =setInterval(function(){
					          if(page === lastPage){
					                         page = 0;
					                         changePage();
					               }else{
					                         page ++;
					                         changePage();
					          };
					     },5000);
					}
					//（７）～秒間隔でイメージ切換の停止設定
					function stopTimer(){
					clearInterval(Timer);
					}

					//（８）タイマースタート
					startTimer();

					/*オプションを足す場合はここへ記載*/

					});

				function check(){
					var Login=$.session.get("checkUser");
					//alert(Login);
					if(Login!=undefined){
						var people=document.getElementById("people").value;
						var standard=document.getElementById("standard").value;
						var superior=document.getElementById("superior").value;
						var deluxe=document.getElementById("deluxe").value;
						var checkIn=document.getElementById("today").value;
						var checkOut=document.getElementById("today2").value;
						window.location.href="/HotelProject/input.jsp?people="+people
								+"&standard="+standard+"&superior="+superior+"&deluxe="+deluxe+
								"&checkIn="+checkIn+"&checkOut="+checkOut;
					}else{
						//alert("Hello");
						window.location.href="/HotelProject/newlogin.jsp";
					}
				}

</script>
	</head>
	<body>
	<jsp:include page="/Header.jsp" />


		<div class="container-fulid">
		<div style="width:70%">
			<div id="slide" >
				<img src="image/HOTEL1.jpg" width="450px">
				<img src="image/Hotel2.jpg" width="450px">
				<img src="image/Hotel3.jpg" width="450px">
			</div>
			</div>
			<center><div class="check" style="margin-top:300px;border-radius: 10px;background-color:rgb(154,157,112);" >
				<div class="col-sm-4">
				<div style="color:white">CheckIn</div>
				<input type="date"id="today" class="form-control mb-4" >
				</div>
				<div class="col-sm-4">
				<div style="color:white">CheckOut</div>
				<input type="date"id="today2" class="form-control mb-4" >
				</div>
				<div class="col-sm-4">
					<div>
					<div style="color:white">NumberOfPeople</div>
						<input type="number" id="people" class="form-control mb-4" placeholder="NumberOfPeople">
					</div>
				</div>
				<div class="col-sm-4">
					<div>
					<div style="color:white">NumberOfStandardRooms</div>
						<input type="number" id="standard" class="form-control mb-4" placeholder="NumberOfStandardRooms">
					</div>
				</div>
				<div class="col-sm-4">
					<div>
					<div style="color:white">NumberOfSuperiorRooms</div>
						<input type="number" id="superior" class="form-control mb-4" placeholder="NumberOfSuperiorRooms">
					</div>
				</div>
				<div class="col-sm-4">
					<div>
					<div style="color:white">NumberOfDeluxeRooms</div>
						<input type="number" id="deluxe" class="form-control mb-4" placeholder="NumberOfDeluxeRooms">
					</div>
				</div>
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
				<div></div>
				<button type="button" class="btn btn-info btn-block"  onclick="check()">Check</button>
				</div>
			</div></center>

				<script type="text/javascript">
					var date = new Date();
					var yyyy = date.getFullYear();
					var mm = ("0"+(date.getMonth()+1)).slice(-2);
					var dd = ("0"+date.getDate()).slice(-2);
					document.getElementById("today").value=yyyy+'-'+mm+'-'+dd;
					document.getElementById("today2").value=yyyy+'-'+mm+'-'+dd;
				</script>

		</div>
		<jsp:include page="/Footer.jsp" />
	</body>
</html>