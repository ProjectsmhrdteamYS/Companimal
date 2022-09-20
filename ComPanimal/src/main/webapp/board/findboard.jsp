<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="newLine" value="<%='\n' %>" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>찾아주세요</title>


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
	<!-- header -->
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
							onclick="location.href='${cpath }/logout.do'">Logout</button>
					</c:if>
				</div>
			</div>
		</div>
	</header>
	<main id=wrap>
		<div class="album py-5">
			<div class="container">
				<img src="${cpath }/images/bichon.jpg" alt="" width="380px"
					class="d-inline-block align-text-top">
				<h2>현상수배</h2>
				<hr>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<c:forEach begin="0" end="2">
						<div class="col">
							<div class="card">
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
											<button type="button"
												class="btn btn-sm btn-primary "
												onclick="location.href='${cpath }/fdetailform.do'">상세보기</button>
											<button type="button"
												class="btn btn-sm btn-outline-secondary" onclick="">삭제</button>
										</div>
										<small class="text-muted">작성자</small> <small
											class="text-muted">조회수</small>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<p></p>
				<div align="right">
					<button type="button" class="btn btn-primary"
						onclick="location.href='${cpath }/findwriteform.do'">게시물
						작성</button>
				</div>
			</div>
		</div>
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