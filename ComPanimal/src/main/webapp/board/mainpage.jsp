<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<style>
 	/* 공통 style */
    ul li{list-style: none; font-weight: 700; }
    a {text-decoration: none;  color :#150906;}
    a:hover {
    color: orange;
    transition: background-color 0.5s;
  }
  	/* 세부디자인==================================== */
  
	nav{display:flex; justify-content:center;}
		section{margin: 0;}
		
		.icon{width:100px; font-weight:500; margin-top: 5px;}
		
		
/* banner구간  */
	 	.test{position: relative; top:0; left:0; width:100%; height:724px; background-size:contain; background-color:black; background-repeat: no-repeat}
/* 		.test{height: 624px; background-size:cover; background-repeat: no-repeat} */
	 	.test:before{content:""; height: 624px; background: linear-gradient(to right, rgba(0,0,0,0.7), transparent);
		position:absolute; left:0; height:100%%; width:50%;} 
		.test_r{height: 624px; background-size: cover;}
	    .test_r:before{content:""; height: 624px; background: linear-gradient(to left, rgba(0,0,0,1), transparent);
		position:absolute; right:0; height:100%; width:60%;} 
		.title_l{position:absolute; top:150px; left:200px; color:white; font-family: sans-serif; 
		animation:l_slide 1s ease-out; }
		.title_l h1{font-size:5rem; font-weight:800; text-shadow: 4px 4px 8px rgba(0,0,0,0.4);}
		.title_l h2{font-size:4rem; font-weight:700; line-height:74px; text-shadow: 4px 4px 8px rgba(0,0,0,0.4);}
		.title_l p{font-size:24px; line-height:30px; text-shadow: 2px 2px 3px rgba(0,0,0,0.3);}
			
			
			
		.title_r{position:absolute; top:150px; right:220px; color:white; font-family: sans-serif; 
		animation:r_slide 1s ease-out;}
		.title_r h1{font-size:5rem; font-weight:800; text-shadow: 4px 4px 8px rgba(0,0,0,0.4);}
		.title_r h2{font-size:4rem; font-weight:700; line-height:74px; text-shadow: 4px 4px 8px rgba(0,0,0,0.4);}
		.title_r p{font-size:24px; line-height:30px; text-shadow: 2px 2px 3px rgba(0,0,0,0.3);}
				
	   
	   
	   @keyframes l_slide{
		   from{left: -100px;}
		   to{left: 200px;}
	   }
		@keyframes r_slide{
		   from{right: -100px;	}
		   to{right: 220px;}
	   }
  
</style>
	<script type="text/javascript">
	function moveUrl(url){
		if(${empty uvo}){
			alert("로그인 후 이용해주시기 바랍니다.")
			url="#";
		}
			location.href=url;
			}
	
	</script>
</head>
<body>

	<!-- header -->
	<header class=" container-fluid p-3 bg-white ">
		<div class="container p-3">
			<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
				<a class="navbar-brand me-4" href="${cpath }/mainpage.do"> <img
					src="${cpath }/images/logo.png" alt="" width="286"
					class="d-inline-block align-text-top ">
				</a>

				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

					<li><a href="${cpath }/companimal.do"
						class="nav-link px-3 link-dark">COMPANIMAL</a></li>
					<li>
						<a href="#" onclick="moveUrl('${cpath }/searchform.do')"
						class="nav-link px-3 link-dark">반려견조회</a></li>
					<li>
						<a href="#" onclick="moveUrl('${cpath }/checkform.do')"
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
              				<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/logout.do'">Logout</button>
							<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/user_updateform.do'">회원 수정</button>
							<button type="button" class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/user_detailform.do'">회원 상세정보</button>
					</c:if>
				</div>
			</div>
		</div>
	</header>


	<!-- banner -->
		<section>
		<div id="carouselExampleFade" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner ">
				
				<div class="carousel-item active">			

				<%-- <div class="test" style="background: url('${cpath }/images/111.jpg');
				background-repeat: no-repeat; background-size:cover;"> --%>
				<div class="test" style="background: url('${cpath }/images/111.jpg');">

					<div class="title_l">
					<h1>COMPANIMAL</h1>
					<p>사랑하는 우리 반려견의 나이 몸무게 특이사항을 저장하고<br>
						반려견의 건강을 지켜주세요!</p>
					</div>
				</div>
				</div>
				
				
				<div class="carousel-item">
				<%-- <div class="test_r" style="background: url('${cpath }/images/222.jpg');
				background-size: contain;"> --%>
				<div class="test_r" style="background: url('${cpath }/images/222.jpg');">
					<div class="title_r">
						<img src="${cpath }/images/일정.png" alt="#" style="width:300px;" class="mb-5">
						<p class="mb-4" style="font-size:80px; font-weight:800; color:#81fdfe" >동물등록신청 후</p>
						<h1>동물판매 의무화</h1>
						<p>동물판매업자가 등록대상 동물을 판매시 구매자의 명의로<br>
						동물 등록신청을 한 후 판매하도록 하는 「동물보호법」이 시행</p>
						</div>
				</div>	
				</div> <!-- item_2 -->
				
				<div class="carousel-item">
				<div class="test" style="background: url('${cpath }/images/333.jpg');">
				<%-- <div class="test" style="background: url('${cpath }/images/333.jpg');
				background-size: contain;"> --%>
					<div class="title_l">
						<img src="${cpath }/images/자진신고.png" class="mb-4" style="width:400px;">
						<!-- <p style="font-size:26px; font-weight:600;">자진신고 「 7.1 ~ 8.31 」 ㅣ 집중단속 「 9.1 ~ 9.30 」</p> -->
						<p style="line-height:10px; font-weight:bold;">자진신고 「 7.1 ~ 8.31 」 ㅣ 집중단속 「 9.1 ~ 9.30 」</p>
						<h1 style="font-size:80px; font-weight:800; color:#f3c48e">반려견 등록,</h1>
						<h2 style="font-size:60px; font-weight:700; line-height:56px;" >선택이 아닌 필수입니다.</h2>
						</div>
				</div><!-- item_2 -->
				
			
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleFade" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		</div>
		</section>




	<!-- info -->
<!-- 	<div class="mt-3 p-3  text-center w-100 " style="height: 500px;"> -->
	<div class="mt-4 mb-4 p-3  text-center w-100 h-100 ">
		<img class="d-block mx-auto mt-3 mb-5" src="${cpath }/images/big_logo.png"
			alt="" width="600">
		<div class="col-lg-6 mx-auto ">
			<p class="lead mb-4">
				입양시까지 책임지고 보호하며 안전한 입양을 통해 다시금 반려동물로서의 <br>행복한 삶을 살아갈 수 있도록 최선을
				다하겠습니다. 컴패니멀과 함께 따뜻한 가족을 만들어 보아요
			</p>
			<br>
			<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
				<button type="button" class="btn btn-primary btn-lg px-4 gap-3"
					onclick="moveUrl('${cpath}/checkform.do')">
					<a>반려견 등록</a>
				</button>
				<button type="button" class="btn btn-outline-secondary btn-lg px-4 "
					onclick="moveUrl('${cpath }/searchform.do')">
					<a>반려견 조회</a>
				</button>
			</div>
		</div>
	</div>



	<!-- icon -->
	<div class="row justify-content-center w-sm">
		<div class="col-sm-1 text-center">
			<a type="button" onclick="location.href='${cpath }/companimal.do'">
				<img class="rounded-circle" src="${cpath }/images/icon_1.png"
				alt="icon_1" width="100">
			</a>
		</div>

		<!-- col_2 -->

		<div class="col-sm-1 text-center">
			<a type="button" onclick="moveUrl('${cpath }/searchform.do')">
				<img class="rounded-circle" src="${cpath }/images/icon_2.png"
				alt="icon_1" width="100" height="100">
			</a>
		</div>
		<!-- col_3 -->

		<div class="col-sm-1 text-center">
			<a type="button" onclick="moveUrl('${cpath}/checkform.do')">
				<img class="rounded-circle" src="${cpath }/images/icon_3.png"
				alt="icon_1" width="100" height="100">
			</a>
		</div>
		<!-- col_4 -->

		<div class="col-sm-1 text-center">
			<a type="button" onclick="location.href='${cpath }/boardform.do'">
				<img class="rounded-circle" src="${cpath }/images/icon_4.png"
				alt="icon_1" width="100" height="100">
			</a>
		</div>
		<!-- con_5 -->
		<div class="col-sm-1 text-center">
			<a type="button" onclick="location.href='${cpath }/findboardform.do'">
				<img class="rounded-circle" src="${cpath }/images/icon_5.png"
				alt="icon_1" width="100" height="100">
			</a>
		</div>
	</div>
	
	
	<!-- content_banner_1 -->
	<div class="container">
		<div class="row pt-5">
			<div class="col">
				<div class="h-100 p-5 text-white bg-dark rounded-3"
					style="background-image: url(${cpath }/images/main_con_1.jpg); background-size:cover;">
					<h2 class="fw-bold">찾아주세요</h2>
					<div class="text-wrap mb-3">우리의 소중한 반려견을 분실했을때<br>
				    <strong>COMPANIMAL</strong>에서 실시간으로 도움을 요청하세요<br>
				    골든타임안에 우리의 반려견을 만날수 있을거예요</div>
					<button class="btn btn-outline-primary fw-bold" onclick="location.href='${cpath}/findboardform.do'" type="button" style="width:130px;">Find</button>
				</div>
			</div>
	<!-- content_banner_2 -->
			<div class="col">
				<div class="h-100 p-5 text-white border rounded-3" style="background-image:url(${cpath }/images/main_con_2.jpg); background-size: cover;">
					<h2 class="fw-bold">우리 댕댕이</h2>
				   	  <div class="text-wrap mb-3">지구 최강 귀여운 우리집 댕댕이<br>
				      <strong>COMPANIMAL</strong>에서 지금바로 공개하세요<br>
				      우리 댕댕이의 친구들이 기다리고 있어요!</div>
					<button class="btn btn-outline-light fw-bold" onclick="location.href='${cpath }/boardform.do'" type="button" style="width:130px;">board</button>
				</div>
			</div>
		</div>
	</div>


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