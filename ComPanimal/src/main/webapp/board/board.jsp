<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
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
<div class="container">
  <img src="../images/mongja.jpg" alt="" width="380px" class="d-inline-block align-text-top">
  <h2>이야기</h2>
  <BR>
  <HR>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성자</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
<tbody>
<c:forEach begin="0" end="2">
    <tr>
      <th>1</th>
      <td><A CLASS="fw-bold text-dark" HREF="#">오늘의 일기</A></td>
      <td>일기내용</td>
      <td>선경주</td>
      <td>20220914</td>
       <td>1</td>
    </tr>
    </c:forEach>
  </table>
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