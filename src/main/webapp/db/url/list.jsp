<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.jung.servlet.common.MysplService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL 목록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
</head>
<body>
	<%
		MysplService mysplService = MysplService.getInstance();
		mysplService.connet();
		
		List<Map<String, Object>> urlList = mysplService.select("SELECT * FROM `url` ORDER BY `id` DESC");
	%>

	<div class="container">
		<table class="table text-center">
			<thead class="font-weight-bold">
				<tr>
					<td>사이트</td>
					<td>사이트 주소</td>
				</tr>
			</thead>
			<tbody>
				<%for(Map<String, Object> urlMap:urlList){ %>
					<tr>
						<td><%= urlMap.get("name") %></td>
						<td><a href="<%=urlMap.get("link") %>"><%=urlMap.get("link") %></a></td> 
					</tr>
				<%}%>
			</tbody>
		</table>
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