<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IPTV</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="test09Style.css">
</head>
<body>
	<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category = request.getParameter("category");
%>

	<div id="warp">
		<header>
			<div class="logo d-flex justify-content-center align-items-end">
				<h2 class="text-danger">Sk broadband IPTV</h2>
			</div>
			<nav class="menu bg-danger d-flex align-items-end justify-content-center mt-2">
				<ul class="nav nav-fill w-100">
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp">전체</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp?category=지상파">지상파</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp?category=드라마">드라마</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp?category=예능">예능</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp?category=영화">영화</a></li>
					<li class="nav-item"><a class="nav-link text-light" href="/jsp/test/test09.jsp?category=스포츠">스포츠</a></li>
				</ul>
			</nav>
		</header>
		<section class="contents">
			<table class="table text-center">
				<thead>
					<tr>
						<td>채널</td>
						<td>채널명</td>
						<td>카테고리</td>
					</tr>
				</thead>
				<tbody>
					<%for(Map<String, String> channelList : list ){
						if(category == null || category.equals(channelList.get("category"))){
					%>
						<tr>
							<td><%= channelList.get("ch") %></td>
							<td><%= channelList.get("name") %></td>
							<td><%= channelList.get("category") %></td>
						</tr>
					<%	}
					}%>
				</tbody>
			</table>
		</section>
		<footer class="d-flex align-items-center justify-content-center">
			<div class="small text-center text-secondary">Copyright 2024. Joowon All Rights Reserved.</div>
		</footer>
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