<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>

	<%
		// 닉네임을 전달 받고, html에 포함
		String ninkname = request.getParameter("nickname");
	
		// 라디오 버튼 파라미터
		String animal = request.getParameter("animal");
	
		// 셀렉트 박스 파라미터
		String fruit = request.getParameter("fruit");
	%>
	
	<h3><%= ninkname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
</body>
</html>