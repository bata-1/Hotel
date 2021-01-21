<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>We accepted by the following contents</p>
<% String people=request.getParameter("people");
	out.println("Number of people is :"+people);%><br>
	<%String stan=request.getParameter("stan");
	out.println("Number of standard room is :"+stan);%><br>
	<%String supe=request.getParameter("supe");
	out.println("Number of superior room is :"+supe);%><br>
	<%String delu=request.getParameter("delu");
	out.println("Number of deluxe room is :"+delu);%><br>
	<%String checkIn=request.getParameter("checkIn");
	out.println("Check in Date is :"+checkIn);%><br>
	<%String checkOut=request.getParameter("checkOut");
	out.println("Check out Date is :"+checkOut);
%>
<p>Thank you for choosing us</p>
<a href="/HotelProject/index.jsp">Back Home</a>
</body>
</html>