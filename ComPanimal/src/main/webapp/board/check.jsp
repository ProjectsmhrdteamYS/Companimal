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
	
<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">	

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
	<%@ include file="header.jsp" %>

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
						이름</label> <input type="text" class="form-control" name="dognm"
						placeholder="반려견 이름을 입력하세요" style="height: 3em;">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">동물
						등록번호</label> <input type="text" class="form-control" name="pet_regno"
						placeholder="반려견 등록번호를 입력하세요" style="height: 3em;">
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">소유자
						명</label> <input type="text" class="form-control" name="owner_nm"
						placeholder="반려견 이름을 입력하세요" style="height: 3em;">
				</div>

				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">동물
						사진 등록</label>
					<div class="mb-3">
					<input class="form-control" type="file" name="pet_img">
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
		<footer class="py-5" style="color:#555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">
				
				<div class="float-start pt-2 pe-5" style="border-right:1.4px solid; border-color:#DEE2E6;"><img src="${cpath }/images/black_symbol.jpg" alt="#" style="width:120px;"></div>
				
				<div class="col px-5 pt-3" style ="width: 300px;">
					<ul class="list-unstyled" style="color:#858789;">
						<li class="fw-bold"><h4>COMPANIMAL</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd. all Rights reserved.</li>
					</ul>
				</div>
				
				<div>
					<ul class="list-unstyled d-flex float-end mt-2" style="height:54px;">					
						<li class="btn btn-primary me-2"  onclick="location.href='https://twitter.com/?lang=ko'" style="width:56px; line-height:38px;"><i class="bi bi-twitter" style="font-size:1.3em"></i></li>					
						<li class="btn btn-primary me-2" onclick="location.href='https://www.instagram.com'" style="width:56px; line-height:38px;"><i class="bi bi-instagram" style="font-size:1.3em"></i></li>
						<a href="#"  title="Popover title" data-bs-content="Popover body content is set in this attribute.">
						<li class="btn btn-primary me-2" style="width:56px; line-height:38px;"><i class="bi bi-arrow-up-circle-fill" style="font-size:1.3em"></i></li>
						</a>
						
					
					</ul>
				</div>
				</div>				
			</footer>
		</div>
			<!-- footer end -->
</body>
</html>