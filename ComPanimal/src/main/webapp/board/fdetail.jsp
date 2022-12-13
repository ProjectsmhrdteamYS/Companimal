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

<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style>
ul li {
	list-style: none;
	font-weight: 600;
}

a {
	text-decoration: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f08ba0bdf026921c7fa3adf9182a2b38&libraries=services"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#btn').click(function(){
			var f_content="${vo.f_content}"
			console.log(f_content)
			$.ajax({
				url : "${cpath}/map.do",
				type : "post",
				data : {"f_content":f_content},
				dataType : "xml",
				success : function(data){
					console.log(data)
					$(data).find("address").each(function(){
						var x = $(this).find('x').text();
						var y = $(this).find('y').text();
					console.log(x,y)
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
										center : new kakao.maps.LatLng(y,x), // 지도의 중심좌표
										level : 3
										// 지도의 확대 레벨
									};
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					})
				},
				error : ()=>{
					alert('err')}
			})
		})
	})
</script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!-- content -->
	<main id="wrap" class="position-relative">
		<div class="container">
			<BR>
			<table class="table">
				<tr>
					<td>상태</td>
					<td>${vo.f_title}</td>
				</tr>
				<tr>
					<td>위치</td>
					<td>${vo.f_content}
						<button id="btn">지도보기</button>
						<div id="map" style="width: 1200px; height: 350px;"></div>
					</td>
				</tr>
				<tr>
					<td>강아지 사진</td>
					<td><img src="${cpath }/img/${vo.f_file}" width="250px"
						height="250px"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${vo.user_name}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${fn:split(vo.f_date," ")[0] }</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><c:if
							test="${uvo.user_id eq vo.user_id }">
							<button class="btn btn-sm btn-success"
								onclick="location.href='${cpath}/fupdateform.do?f_seq=${vo.f_seq}'">수정</button>
							<button class="btn btn-sm btn-danger"
								onclick="location.href='${cpath}/fdelete.do?f_seq=${vo.f_seq}'">삭제</button>
							<button class="btn btn-sm btn-primary"
								onclick="location.href='${cpath}/findboardform.do'">리스트</button>
						</c:if> <c:if test="${uvo.user_id ne vo.user_id  }">
							<button type="button" class="btn btn-sm btn-primary"
								onclick="location.href='${cpath }/findboardform.do'">리스트</button>
						</c:if></td>
				</tr>
			</table>

		</div>
	</main>
	<!-- content end -->

	<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color: #555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">

				<div class="float-start pt-2 pe-5"
					style="border-right: 1.4px solid; border-color: #DEE2E6;">
					<img src="${cpath }/images/black_symbol.jpg" alt="#"
						style="width: 120px;">
				</div>

				<div class="col px-5 pt-3" style="width: 300px;">
					<ul class="list-unstyled" style="color: #858789;">
						<li class="fw-bold"><h4>
								COMPANIMAL
								</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd.
							all Rights reserved.</li>
					</ul>
				</div>

				<div>
					<ul class="list-unstyled d-flex float-end mt-2"
						style="height: 54px;">
						<li class="btn btn-primary me-2"
							onclick="location.href='https://twitter.com/?lang=ko'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-twitter" style="font-size: 1.3em"></i></li>
						<li class="btn btn-primary me-2"
							onclick="location.href='https://www.instagram.com'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-instagram" style="font-size: 1.3em"></i></li>
						<a href="#" title="Popover title"
							data-bs-content="Popover body content is set in this attribute.">
							<li class="btn btn-primary me-2"
							style="width: 56px; line-height: 38px;"><i
								class="bi bi-arrow-up-circle-fill" style="font-size: 1.3em"></i></li>
						</a>


					</ul>
				</div>
			</div>
		</footer>
	</div>
	<!-- footer end -->
</body>
</html>