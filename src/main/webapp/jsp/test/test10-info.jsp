<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="test10Style.css">
</head>
<body>
	<div id="warp">
		<header>
			<div class="top d-flex align-items-center">
				<h2 class="logo text-success">melong</h2>
				<div class="search input-group col-5">
					<input class="form-control" type="text" name="searchText">
					<div class="input-group-append">	
						<button class="btn btn-success" type="button">검색</button>
					</div>
				</div>
			</div>
			<nav class="menu d-flex justify-content-start">
				<ul class="nav nav-fill col-5 ">
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">멜롱챠트</a></li>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">최신음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">장르음악</a></li>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">멜롱DJ</a></li>
					<li class="nav-item"><a class="nav-link text-dark font-weight-bold" href="#">뮤직어워드</a></li>
				</ul>
			</nav>
		</header>
		<section class="contents">
			<div class="info border border-success"></div>
			<div>
				<h2>가사</h2><hr>
				<div class="song">
				가사 정보 없음
				</div>
			</div>
		</section>
	
		<footer class="d-flex align-items-center ">
			<div class="small text-center text-secondary ml-2">Copyright 2024. Joowon All Rights Reserved.</div>
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