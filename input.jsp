<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 <link rel="stylesheet" href="popup.css">
 <link rel="stylesheet"  href="HeaderAndFooter.css">
 <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		var getPeople=getParam('people');
		var getStandard=getParam('standard');
		var getSuperior=getParam('superior');
		var getDeluxe=getParam('deluxe');
		var getCheckIn=getParam('checkIn');
		var getCheckOut=getParam('checkOut');
		var setLogin=$.session.get("checkUser");
		//alert(setLogin);
		if(setLogin==undefined)
		{
			document.getElementById("modalbody").innerHTML="<button type='button' class='close' data-dismiss='modal'>&times;</button>Please login first ";
			document.getElementById("modal").click();
		}

		//alert($("#spanLogin").text());

		//document.getElementById("booking").value="Booking";
		//document.getElementById("booking").text="New Booking";
		if(getPeople!=null){
			document.getElementById("people").value=getPeople;
		}
		if(getStandard!=null){
			document.getElementById("standard").value=getStandard;
		}if(getSuperior!=null){
			document.getElementById("superior").value=getSuperior;
		}if(getDeluxe!=null){
			document.getElementById("deluxe").value=getDeluxe;
		}if(getCheckIn!=null){
			document.getElementById("today").value=getCheckIn;
		}if(getCheckOut!=null){
			document.getElementById("today2").value=getCheckOut;
		}

		$("#submit").on("click", function(e){
			e.preventDefault();
			$.ajax({
				type: 'POST',
				url: "/HotelProject/newbooking",
				contentType: "application/json",
				data: JSON.stringify({
					"emailAddress": $.session.get("checkUser"),
					"numberOfStandardRooms": $('#standard').val(),
					"numberOfSuperiorRooms": $('#superior').val(),
					"numberOfDeluxeRooms": $('#deluxe').val(),
					"numberOfPeople": $('#people').val(),
					"checkInDate": $('#today').val(),
					"checkOutDate": $('#today2').val()
				}),
				success: function(json){
					//alert(json);
					document.getElementById("modalbody").innerHTML="<button type='button' class='close' data-dismiss='modal'>&times;</button>"+json;
					document.getElementById("modal").click();
					}
			});

		});
		});
		//alert(getPeople);
		//alert(getStandard);
		//alert(document.getElementById("booking").value);
		//document.getElementById("booking").value="hello";





	function getParam(name, url) {
	    if (!url) url = window.location.href;
	    name = name.replace(/[\[\]]/g, "\\$&");
	    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
	        results = regex.exec(url);
	    if (!results) return null;
	    if (!results[2]) return '';
	    return decodeURIComponent(results[2].replace(/\+/g, " "));
	}

	function checklogin(){
		alert("heloo");
		if(setLogin==undefined){
			window.location.href="/HotelProject/newlogin.jsp";
		}
	}

</script>
<style>
 /* 全体設定 */
			* {
				box-sizing: border-box;
				}

				/* ポップアップウインドウの設定 */
				.popup {
				background-color: #efefef;
				box-shadow: 0 0 0 9999px rgba(0, 0, 0, .8);
				display: none;
				position: fixed;
				top: 0;
				left: 0;
				right: 0;
				bottom: 0;
				margin: auto;
				width: 40vw;
				height: 35vw;
				overflow-y: scroll;
				}
				/* チェックボックスの初期設定 */
				#popup-on{
				display: none;
				}
				/* チェックされたらポップアップウインドウを開く */
				#popup-on:checked + .popup{
				display: block;
				}

				/* 閉じるアイコン（右上） */
				.icon-close{
				background: #000;
				color: #fff;
				font-size: 30px;
				padding: 0 10px;
				position: absolute;
				right: 0;
				}

			/* 閉じるボタン */
			.btn-close{
			background: #000;
			border-radius: 10px;
			color: #fff;
			padding: 10px;
			cursor: pointer;
			margin: 10px auto;
			width: 95%;
			text-align: center;
			}

			/* 開くボタン */
			.btn-open{
			border-radius: 10px;
			color: #fff;
			padding: 10px;
			cursor: pointer;
			margin: 10px auto;
			width: 95%;
			text-align: center;
			}

			/* ポップアップの内容 */
			.popup-content{
			margin: 40px auto 40px auto;
			width: 90%;
			}
	.form{
	border:1px solid black;
	padding:15px;
	width:60%;
	}
	.row{
		text-align:justify;
		padding:5px;
	}

	.input{
		text-align:justify;
		margin-right:200px;
		padding:5px;
	}

.popup-content div{
	padding:3px;
}
</style>


</head>
<body>
<jsp:include page="/Header.jsp" />
<div class="container-fulid">
<center><h2>Reservation Page</h2></center>
<center><div class="form" align="center">
		<div class="col-sm-6" >
		<div><a href = "Cancel.jsp" class = "width">Cancel My Booking</a></div>
		<div><a href = "Check.jsp" class = "width">Check Your Booking</a></div>
		</div>
		<div class="col-sm-6" style="border-left:1px solid black">
		<center><h2>New Booking</h2></center>
		<div class="col-sm-6" style="float:left;">Number of people</div><div class="col-sm-6" style="float:left;"><div class="input" ><input type="text" id="people" ></div></div>
		<div style="clear:both;"></div>
		<div class="col-sm-6" style="float:left;">Number of standard rooms</div><div class="col-sm-6" style="float:left;"><div class="input"><input type="text" id="standard"  ></div></div>
		<div style="clear:both;"></div>
		<div class="col-sm-6" style="float:left;">Number of superior rooms</div><div class="col-sm-6" style="float:left;"><div class="input"><input type="text" id="superior"></div></div>
		<div style="clear:both;"></div>
		<div class="col-sm-6" style="float:left;">Number of deluxe rooms</div><div class="col-sm-6" style="float:left;"><div class="input"><input type="text" id="deluxe" ></div></div>
		<div style="clear:both;"></div>
		<div class="col-sm-6" style="float:left;">Check in date</div><div class="col-sm-6" style="float:left;"><div class="input"><input type="date" id="today" ></div></div>
		<div style="clear:both;"></div>
		<div class="col-sm-6" style="float:left;">Check out date</div><div class="col-sm-6" style="float:left;"><div class="input"><input type="date" id="today2" ></div></div>
		</div>

		<div class="pop-box">
			<label for="popup-on">
			<div class="btn-open">
				<img id=confirm src="submit.jpg" alt=""  onclick="getImage()"></div>
		</div>

			</label>
				<input type="checkbox" id="popup-on">
				<div class="popup">
						<label for="popup-on" class="icon-close">×</label>
						<div class="popup-content">
									<!-- ポップアップの中身 -->

										<div class="col-sm-7" style="background-color:lavender;">NumberOfPeople is :</div><div id="numpeople"  class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">NumberOfStandardRooms is :</div><div id="numstandard" class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">NumberOfSUperiorRooms is :</div><div id="numsuperior" class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">NumberOfDeluxeRooms is :</div><div id="numdeluxe" class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">CheckInDate is :</div><div id="checkin" class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">CheckOutDate is :</div><div id="checkout" class="col-sm-5" style="background-color:lavenderblush;"></div>
										<div class="col-sm-7" style="background-color:lavender;">Totalamount is :</div><div id="totalamount" class="col-sm-5" style="background-color:lavenderblush;"></div>

										<div class="col-sm-4"></div>
										<div class="col-sm-4"><button style="margin:15px" id="submit">Submit</button></div>
										<div class="col-sm-4"></div>


									<!-- ./ポップアップの中身　ここまで -->
								</div>
								<div>
								<div class="col-sm-4"></div>
										<div class="col-sm-4"><label for="popup-on"><div class="btn-close">Close</div></label></div>
										<div class="col-sm-4"></div>
								</div>
							</div>
						</div></center>
						</div>

		<script type="text/javascript">
			var date = new Date();
			var yyyy = date.getFullYear();
			var mm = ("0"+(date.getMonth()+1)).slice(-2);
			var dd = ("0"+date.getDate()).slice(-2);
			document.getElementById("today").value=yyyy+'-'+mm+'-'+dd;
			document.getElementById("today2").value=yyyy+'-'+mm+'-'+dd;
		</script>
		<script>
		function getImage()
		{
			var stan=document.getElementById("standard").value;
			var supe=document.getElementById("superior").value;
			var delu=document.getElementById("deluxe").value;
			var totalamount=0;
			for(var i=0;i<stan;i++){
				totalamount=totalamount+5000;
			}
			for(var i=0;i<supe;i++){
				totalamount=totalamount+7000;
			}
			for(var i=0;i<delu;i++){
				totalamount=totalamount+10000;
			}
			document.getElementById("numpeople").innerHTML=document.getElementById('people').value;
			document.getElementById("numstandard").innerHTML=document.getElementById('standard').value;
			document.getElementById("numsuperior").innerHTML=document.getElementById('superior').value;
			document.getElementById("numdeluxe").innerHTML=document.getElementById('deluxe').value;
			document.getElementById("checkin").innerHTML=document.getElementById('today').value;
			document.getElementById("checkout").innerHTML=document.getElementById('today2').value;
			document.getElementById("totalamount").innerHTML=totalamount;
		}</script>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- dialog body -->
            <div class="modal-body" id="modalbody">
            </div>
            <!-- dialog buttons -->
            <div class="modal-footer"><button type="button" class="btn btn-default" data-dismiss="modal"  onclick="checklogin()">OK</button></div>
        </div>
    </div>
</div>

<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="display:none" id="modal"></button>

		<jsp:include page="/Footer.jsp" />
	</body>
</html>