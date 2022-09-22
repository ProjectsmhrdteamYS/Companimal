<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>반려동물등록</title>
<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
/* 공통 style */
ul li {
	list-style: none;
	font-weight: 700;
}

a {
	text-decoration: none;
	color: #150906;
}

a:hover {
	color: orange;
	transition: background-color 0.5s;
}

/* 세부디자인 */
.search {
	max-width: 650px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

/* 첨부파일 디자인 수정 */
.filebox input {
	width: 300px;
	height: 40px;
}

.filebox label {
	width: 236px;
	display: inline-block;
	padding: 10px 20px;
	color: #fff;
	vertical-align: middle;
	background-color: #595350;
	cursor: pointer;
	height: 40px;
	margin-left: 10px;
}

/* 기존 디자인 수정 */
.filebox input[type="file"] {
	position: absolute;
	width: 0;
	height: 0;
	padding: 0;
	overflow: hidden;
	border: 0;
}
</style>
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
						<button type="button" class="btn btn-primary"
							onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
					</c:if>

					<c:if test="${!empty uvo }">
              ${uvo.user_id}님 환영합니다.
              <button type="button"
							class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/logout.do'">Logout</button>
					</c:if>

				</div>
			</div>
		</div>
	</header>
	<!-- header end -->

	<!-- content -->
	<div class="container" style="height: 780px;">
		<div class="form-signin mx-auto mt-5">
			<form class="search rounded-4 p-5 mx-auto h-100"
				style="width: 650px;" action="${cpath }/check.do" method="post"
				enctype="multipart/form-data">
				<br> <img class="mx-5" src="${cpath }/images/logo.png" alt="로고"
					width="80%">
				<h1 class="h3 mt-3 fw-normal text-center">반려동물 등록 서비스</h1>
				<input type="hidden" name="user_id" value="${uvo.user_id }">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">반려동물
						이름</label> <input type="email" class="form-control" name="dognm"
						placeholder="반려견 이름을 입력하세요" style="height: 3em;">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">동물
						등록번호</label> <input type="email" class="form-control" name="pet_regno"
						placeholder="반려견 등록번호를 입력하세요" style="height: 3em;">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">소유자
						명</label> <input type="email" class="form-control" name="owner_nm"
						placeholder="반려견 이름을 입력하세요" style="height: 3em;">
				</div>

				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">동물
						사진 등록</label>
					<div class="filebox">
						<input class="upload-name" value="동물사진"> <label for="file">파일찾기</label>
						<input type="file" name="pet_img">
					</div>
				</div>
				<button class="w-100 btn btn-lg btn-primary" type="submit"
					style="height: 60px;">submit</button>
				<p class="mt-5 mb-3 text-muted">© 2022–2025</p>
			</form>
		</div>
		<!-- content end -->


		<!-- footer -->
			<div class="container">
				<footer class="py-5" style="color: #555;">
					<div class="d-flex justify-content-between py-4 my-4 border-top">
						<div class="row">
							<div class="col">
								<ul class="list-unstyled">
									<li class="fw-normal">© 2022 Company, Inc. All rights
										reserved.</li>
									<li class="fw-normal">주식회사 컴패니멀 어쩌구 저쩌구</li>
									<li class="fw-normal">그래서 만든사람 어쩌구저쩌구</li>
								</ul>
							</div>
						</div>
						<ul class="list-unstyled d-flex ">
							<li class="btn btn-primary py-4 me-2">짹짹이</li>
							<li class="btn btn-outline-secondary py-4 me-2">인서타</li>
							<li class="btn btn-primary py-4 me-2">농농농</li>
						</ul>
					</div>
				</footer>
			</div>
		<!-- footer end -->
</body>
</html>