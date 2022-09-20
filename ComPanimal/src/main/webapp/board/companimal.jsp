<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>


<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body>
	<header class=" container-fluid p-3 bg-white ">
		<div class="container p-3">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
				<a class="navbar-brand me-4" href="${cpath }/mainpage.do"> <img
					src="${cpath }/images/logo.png" alt="" width="286"
					class="d-inline-block align-text-top ">
				</a>

				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

					<li><a href="${cpath }/companimal.do"
						class="nav-link px-3 link-dark">COMPANIMAL</a></li>
					<li><a href="${cpath }/searchform.do"
						class="nav-link px-3 link-dark">반려견조회</a></li>
					<li><a href="${cpath }/checkform.do"
						class="nav-link px-3 link-dark">반려견등록</a></li>
					<li><a href="${cpath }/boardform.do"
						class="nav-link px-3 link-dark">게시판</a></li>
					<li><a href="${cpath }/findboardform.do"
						class="nav-link px-3 link-dark">찾아주세요</a></li>
				</ul>

				<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-2">
					<input type="search" class="form-control form-control-dark"
						placeholder="Search..." aria-label="Search">
				</form>

				<div class="text-end">
					<c:if test="${empty uvo }">
						<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/signinform.do'">Login</button>
					</c:if>

					<c:if test="${!empty uvo }">
		              ${uvo.user_id}님 환영합니다.
        		      <button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/signinform.do'">Logout</button>
					</c:if>
				</div>
			</div>
		</div>
	</header>
	<main id="wrap">
		<div class="container my-5">
			<div
				class="row p-4 pb-0 pe-lg-0 pt-lg-5 align-items-center rounded-3 border shadow-lg">
				<div class="col-lg-7 p-3 p-lg-5 pt-lg-3">
					<h1 class="display-4 fw-bold lh-1">Companimal</h1>
					<br>
					<br>
					<p class="lead">Quickly design and customize responsive
						mobile-first sites with Bootstrap, the world’s most popular
						front-end open source toolkit, featuring Sass variables and
						mixins, responsive grid system, extensive prebuilt components, and
						powerful JavaScript plugins.</p>
					<br>
					<br>
					<div
						class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">

						<button type="button"
							class="btn btn-primary btn-lg px-4 me-md-2 fw-bold">Primary</button>
						<button type="button"
							class="btn btn-outline-secondary btn-lg px-4">Default</button>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1 p-0 overflow-hidden shadow-lg">
					<img class="rounded-lg-3" src="images/222.jpg" alt="" width="720">
				</div>
			</div>
		</div>
	</main>
	<br>
	<hr>
	<br>
	<br>
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