<%@page import="ca.board.dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />


<!-- 테스트하는 중 이것부터 -->
<%!ProjectDAO dao = new ProjectDAO(); %>

<% String userid = request.getParameter("user_id");
   String userpw = request.getParameter("user_pw");
%>
<!-- 이것까지 -->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>로그인</title>
<style>
main {
	background-color: #fff;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- 외부 CSS -->
<link rel="stylesheet" href="${cpath }/board/basic.css">
</head>
<body>
	<header>
		<!-- 여기서 헤드바 컬러수정 -->
		<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-light  "> -->
		<nav class="navbar">
			<!-- 로고 -->
			<a class="logo" href="${cpath }/mainpage.do"> <img
				src="${cpath }/images/logo.png" alt="" width="380px"
				class="d-inline-block align-text-top">
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/companimal.do">CompAnimal
							소개</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/searchform.do">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="${cpath }/checkform.do">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/boardform.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/findboardform.do">찾아주세요</a></li>
				</ul>
				<!-- 버튼 -->
				<ul id="btn-basic">

					<c:if test="${empty uvo }">
						<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/signinform.do'">Login</button>
					</c:if>

					<c:if test="${!empty uvo }">
              			${uvo.user_id}님 환영합니다.
              			<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/signinform.do'">Logout</button>
					</c:if>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='${cpath }/signupform.do'">회원가입</button></li>
				</ul>
			</div>
		</nav>
	</header>
	<main class="form-signin">
		<form action="${cpath }/signin.do">
			<a class="logo" href="${cpath }/mainpage.do"> <img
				src="${cpath }/images/logo.png" alt="" width="380px"
				class="d-inline-block align-text-top">
			</a> <br>
			<br>
			<br>
			<div class="form-floating">
				<input type="text" class="form-control"
				id="floatingInput" name = "user_id" placeholder="id"> 
					<label for="floatingInput">ID</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control"
				id="floatingPassword" name = "user_pw" placeholder="Password"> 
					<label for="floatingPassword">Password</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">Sign
				in</button>
			<p class="mt-5 mb-3 text-muted">&copy; 2022 CompAnimal</p>
		</form>
	</main>
<footer class="py-5 ">
		<div class="d-flex justify-content-between py-4 my-4 border-top">
			<div class="row">
				<div class="col">
					<ul>
						<li>© 2022 Company, Inc. All rights reserved.</li>
						<li>주식회사 컴패니멀 어쩌구 저쩌구</li>
						<li>그래서 만든사람 어쩌구저쩌구</li>
					</ul>
				</div>
				<div class="col">
					<ul>
						<li>© 2022 Company, Inc. All rights reserved.</li>
						<li>주식회사 컴패니멀 어쩌구 저쩌구</li>
						<li>그래서 만든사람 어쩌구저쩌구</li>
					</ul>
				</div>
			</div>
			<ul class="list-unstyled d-flex ">
				<li class="btn btn-primary py-4 me-2">짹짹이</li>
				<li class="btn btn-outline-secondary py-4 me-2">인서타</li>
				<li class="btn btn-primary py-4 me-2">농농농</li>
			</ul>
	</footer>
</body>
</html>