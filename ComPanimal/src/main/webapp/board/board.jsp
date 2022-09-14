<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">

<!-- 외부 CSS -->
<link rel="stylesheet" href="basic.css">


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body>

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

<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    
    <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">내용</th>
      <th scope="col">작성일</th>
      <th scope="col">조회수</th>
    </tr>
  </thead>
  
<tbody>

<c:forEach begin="0" end="2">
    
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
       <td>@mdo</td>
    </tr>
    </c:forEach>
  </table>
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