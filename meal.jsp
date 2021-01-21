<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet"  href="HeaderAndFooter.css">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Menu</title>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Footer-with-button-logo.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src ="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="assets/css/menu.css">

    <script>
    function check(i){
    	$.ajax({
    		type:"POST",
    		url:"/HotelProject/checkMeal?time="+i,
    		contentType:"application/json",

    		success:function(json){
    			console.log(json);
    			$("#menus").empty();
    			if(json[0].mealName=="Curry and rice"){

					var str="<div class='meal'><h2>Curry and rice</h2><div><img src='image/Curry.jpg' width='150px' height='150px'></div></div>"
				}else{
    				var str="<div class='meal'><h2>"+
					json[0].mealName+"</h2><div><img src='image/"+json[0].mealName+".jpg' width='150px' height='150px'></div></div>"
				}

    			for(var i=1;i<json.length;i++){
    					var str=str+"<div class='meal'><h2>"+
    					json[i].mealName+"</h2><div><img src='image/"+json[i].mealName+".jpg' width='150px' height='150px'></div></div>";
    				}

    			document.getElementById("menus").innerHTML=str;
    		}
    	});
    }
    </script>
    <style>
    	table{
  border-collapse:separate;
  border-spacing: 5px;
  width: 100%;
}
table td{
  border-radius: 5px;
  text-align: center;
  padding: 10px 0;
  background-color: #e4d4bc;
  border:solid 1px #af9d85;
  float:left;
}

.meal{
	float:left;
	padding:15px;
	margin-bottom:30px;
	border:1px solid black;
	width:20%;
}
.wrap{
	border:1px solid black;
	margin-top:20px;
	margin-bottom:20px;
}

    </style>
</head>
<body>
<jsp:include page="/Header.jsp" />
<div class="container-fulid">
<center><h2>Meal</h2></center>
	<div class="wrap">

        <div id="menutitle"><h1>Menu</h1></div>

        <div id="menuarea">
            <input type="button" id="bfHT" value="Breakfast" onclick="check('breakfast')">
            <input type="button" id="lunchHT" value="Lunch" onclick="check('lunch')">
            <input type="button" id="dinnerHT" value="Dinner" onclick="check('dinner')">
        </div>

        <br>
        <br>
        <div id="menuscontainar">
            <div id="menus">
            </div>
        </div>
        </div>
        </div>
        <jsp:include page="/Footer.jsp" />
</body>
</html>