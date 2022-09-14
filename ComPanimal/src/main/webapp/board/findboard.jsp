<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- 외부 CSS -->
<link rel="stylesheet" href="basic.css">


<title>찾아주세요 게시판</title>

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
					<li class="nav-item"><a
						class="nav-link active bg-light text-dark" aria-current="page"
						href="#">CompAnimal 소개</a></li>
					<li class="nav-item"><a
						class="nav-link active bg-light text-dark" aria-current="page"
						href="#">동물 정보 조회</a></li>
					<li class="nav-item"><a
						class="nav-link active bg-light text-dark" aria-current="page"
						href="#">동물 정보 등록</a></li>
					<li class="nav-item"><a
						class="nav-link active bg-light text-dark" aria-current="page"
						href="#">게시판</a></li>
					<li class="nav-item"><a
						class="nav-link active bg-light text-dark" aria-current="page"
						href="#">찾아주세요</a></li>
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
<main>
	<div class="album py-5 bg-light">
		<div class="container">

			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				<c:forEach begin="0" end="2">
					<div class="col">
						<div class="card shadow-sm">
							<img
								src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
								class="bd-placeholder-img card-img-top" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg" role="img"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title>
							<rect width="100%" height="100%" fill="#55595c" />
							</img>

							<div class="card-body">
								<p class="card-text">내용</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-sm btn-outline-secondary">상세보기</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">수정</button>
										<button type="button" class="btn btn-sm btn-outline-secondary">삭제</button>
									</div>
									<small class="text-muted">작성자</small> <small class="text-muted">조회수</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>

</main>

<footer>
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
		<p class="mb-1">Album example is &copy; Bootstrap, but please
			download and customize it for yourself!</p>
		<p class="mb-0">
			New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
				href="/docs/5.1/getting-started/introduction/">getting started
				guide</a>.
		</p>
	</div>
</footer>
</html>