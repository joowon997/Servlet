<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.jung.servlet.common.MysplService"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>
	
	<%
		MysplService mysplService = MysplService.getInstance();
		mysplService.connet();
		
		List<Map<String, Object>> resultList = mysplService.select("SELECT * FROM `new_user` ORDER BY `id` DESC");
		
		
		
	%>
	
	<table border="1">
		<thead>
			<tr>
				<td>이름</td>
				<td>생년월일</td>
				<td>이메일</td>
				<td>자기소개</td>
			</tr>
		</thead>
		<tbody>
		<%for(Map<String, Object> resultMap:resultList){ %>
			<tr>
				<td><%= resultMap.get("name") %></td>
				<td><%= resultMap.get("yyyymmdd") %></td>
				<td><%= resultMap.get("email") %></td>
				<td><%= resultMap.get("introduce") %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
	
</body>
</html>