<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
<%
	int length = Integer.parseInt(request.getParameter("length"));

	String[] unitArray = request.getParameterValues("unit");

	String result = "";
	for(String unitString : unitArray){
		
		if(unitString.equals("inch")){
			double inch = length / 2.54;
			result += inch + "in<br>";
		}else if(unitString.equals("yard")){
			double yard = length / 91.44;			
			result += yard + "yd<br>";
		}else if(unitString.equals("feet")){
			double feet = length / 30.48;			
			result += feet + "ft<br>";
		}else if(unitString.equals("meter")){
			double meter = length / 100.0;			
			result += meter + "m<br>";
		}
	}

%>
	<div class="container">
		<h2>변환결과</h2>
		<h3><%= length %> cm</h3><hr>
		<h3><%= result %></h3>
	</div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous"></script>	
</body>
</html>