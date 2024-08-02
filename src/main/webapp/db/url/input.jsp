<%@page import="com.jung.servlet.common.MysplService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
		<h2>즐겨찾기 추가</h2>
		
		<form method="get" action="/db/url/insert">
			<div>사이트명:</div>
			<input class="form-control col-4" type="text" name="name">
			<div>사이트 주소:</div>
			<input class="form-control col-6" type="text" name="link">
			<div class="col-6 p-0 mt-3">	
				<div class="d-flex justify-content-between">
					<a class="btn btn-success" href="/db/url/list.jsp" >리스트 보기</a>
					<button class="btn btn-success" type="submit">추가</button>
				</div>
			</div>
		</form>
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