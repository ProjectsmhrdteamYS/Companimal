<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동물조회</title>

<style>
body {
	font-family: Arial;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<header>
	<!-- 여기서 헤드바 컬러수정 -->
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary"> -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-light  ">
		<div class="container-fluid">
			<!-- 로고 -->
			<a class="navbar-brand text-dark" href="#"> <img
				src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				CompAnimal Home
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="search.jsp">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">게시판</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">찾아주세요</a></li>
					<!-- 버튼 -->

			
					<!-- <div id="btn-basic">
					<button type="button" class="btn btn-dark">로그인</button>
					<button type="button" class="btn btn-dark">회원가입</button>
					</div> -->
				</ul>
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark">로그인</button></li>
					<li><button type="button" class="btn btn-dark">회원가입</button></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<body>
	<p></p>
	<div class="container">
		<form action="#">
				<label for="fname">동물등록번호</label> <input type="text" id="fname"
					name="firstname" placeholder="등록번호 15자리"> <label
					for="lname">소유자명</label> <input type="text" id="lname"
					name="lastname" placeholder="Pet name..">
			<hr>
			
			<!-- 이미지 업로드해서 조회 - 삭제:
			<label for="lname">QR이미지로 조회<img src="   "></label>
			<br>
			<input	type="file" id="myFile" name="filename">
			<hr>
			 -->
			
			<input type="submit" value="조회">
		</form>
	</div>
</body>
 <footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
</html>