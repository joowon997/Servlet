<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품목</title>
</head>
<body>
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
	
		
	%>

	<h1>장목록</h1>
	<table border="1">
		<thead>
			<tr>
				<td>번호</td>
				<td>품목</td>
			</tr>
		</thead>
		<tbody>
		<%for(int i = 0; i < goodsList.size(); i++ ){  %>
			<tr>
				<td><%= i + 1 %></td>
				<td><%= goodsList.get(i) %></td>
			</tr>
		<% } %>
		</tbody>
	</table>

</body>
</html>