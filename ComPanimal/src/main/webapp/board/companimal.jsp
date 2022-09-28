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
<title>companimal</title>


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
    ul li{list-style: none; font-weight: 700; }
    a {text-decoration: none;  color :#150906;}
    a:hover {
    color: orange;
    transition: background-color 0.5s;}
    
/* 세부디자인 */

#main{
background: url('${cpath }/images/companimal_banner.jpg');
background-size: 100%;"
}

.main_banner{width:380px; position: relative; top:50px; right:-40px; animation:r_slide 1s ease-out;}



@keyframes r_slide{
		   from{right: -140px;}
		   to{right: -40px;}
	   }

#title{font-weight:800}
.read{font-weight:400; font-size:1.2em; line-height:1.5em; color:#666;}

</style>




</head>
<body>
	<%@ include file="header.jsp" %>
	
	<!--  content -->
	<main id="wrap">
		<div class="container my-5">
			<div class="row p-5  align-items-center rounded-5 border shadow-lg">
				<div class="col p-5  pt-lg-3">
					<h1 id="title" class="display-4 lh-1 text-primary">COMPANIMAL</h1>
					<br><br>
					<p class="read">저희 컴패니멀의 어원은<br>
					<strong>Companion + animal</strong>의 합성어 입니다.<br>
					'동반자', '동료'라는 뜻의 영어 'Companion'의 어원으로<br>
					'빵(Pan)을 함께(Com) 먹는 사이'라는 의미를 담고 있으며<br>
					'한솥밥을 먹는 사이'이자 더 나아가 가족을 의미합니다.<br>
					저희 Companimal에서는 유기동물의 생명과 안전을<br> 
					적정하게 보호, 관리하여 생명존중에 대한 정서함양을<br>
					이바지 하기 위하여 수립되었습니다.</p>
					
					<br><br>
					<div class="d-grid gap-2 d-md-flex justify-content-md-start mb-4 mb-lg-3">
		            <button type="button" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold" style="width:200px; height:60px;"
		           	onclick="location.href='${cpath }/boardform.do'">Board     <i class="bi bi-arrow-right-circle-fill"></i></button>
            </div>
				</div> 
				<div id="main" class="rounded-5 shadow-lg" style="width:500px; height:450px;">
				<img class="main_banner" src="${cpath }/images/companimal_2.png" alt="companima_info">
				</div>
			</div>
		</div>
	</main>
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