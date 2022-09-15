<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
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
	max-width: 500px;
	margin-top: 80px;
	padding: 32px;
	border-radius: 5px;
	background-color: #fff;
}
</style>
<title>동물조회</title>
	<!-- 외부 CSS -->
<link rel="stylesheet" href="basic.css">
</head>
<body>
<header>
	<!-- 여기서 헤드바 컬러수정 -->
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-light  "> -->
	<nav class="navbar">
			<!-- 로고 -->
			<a class="logo" href="http://localhost:8081/ComPanimal/board/mainpage.jsp"> <img
				src="../images/logo.png"
				alt="" width="380px" class="d-inline-block align-text-top">
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="http://localhost:8081/ComPanimal/board/companimal.jsp">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="http://localhost:8081/ComPanimal/board/search.jsp">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="http://localhost:8081/ComPanimal/board/check.jsp">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="http://localhost:8081/ComPanimal/board/board.jsp">게시판</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="http://localhost:8081/ComPanimal/board/findboard.jsp">찾아주세요</a></li>
					</ul>
					<!-- 버튼 -->
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark" onclick="location.href='http://localhost:8081/ComPanimal/board/signin.jsp'">로그인</button></li>
					<li><button type="button" class="btn btn-dark" onclick="location.href='http://localhost:8081/ComPanimal/board/signup.jsp'">회원가입</button></li>
				</ul>
			</div>
	</nav>
</header>
<main id="wrap">
	<p></p>
	<div class="container">
		<form action="#">
		<a class="logo" href="http://localhost:8081/ComPanimal/board/mainpage.jsp"> <img
				src="../images/logo.png"
				alt="" width="380px" class="d-inline-block align-text-top"></a>
			<br><br><br>
			<label for="lname">소유자명</label>
			<input type="text" id="lname" name="lastname" placeholder="소유자명">
			<label for="fname">동물등록번호</label>
			<input type="text" id="fname" name="firstname" placeholder="등록번호 15자리">
			<hr>
			
			<!-- 이미지 업로드해서 조회 - 삭제:
			<label for="lname">QR이미지로 조회<img src=""></label>
			<br>
			<input	type="file" id="myFile" name="filename">
			<hr>
			 -->
			
			<input type="submit" value="조회">
		</form>
	</div>
</main>
 <footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
</body>
</html>