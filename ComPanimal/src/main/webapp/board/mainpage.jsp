<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">



<!-- 부트스트랩 CSS 링크 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">

<!-- 외부 CSS -->
<link rel="stylesheet" href="basic.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
</script>

<title>메인페이지</title>

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
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">동물 정보 조회</a></li>
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
  <!-- 내용 -->
  <div class="position-relative overflow-hidden p-3 p-md-2 m-md-1 text-center bg-light">
	  <div class="col-md-5 p-lg-5 mx-auto my-5">
		  <h1 class="display-4 fw-normal">메인화면 배너</h1>
		  <p class="lead fw-normal">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple's marketing pages.</p>
		  <a class="btn btn-outline-secondary" href="#">Coming soon</a>
	  </div>
		 <!-- 나중에 추가할것있으면 해도되는데 필요없는 경우에는 삭제하기로 -->
		<!-- <div class="product-device shadow-sm d-none d-md-block"></div> -->
		<!-- <div class="product-device product-device-2 shadow-sm d-none d-md-block">hello</div> -->
	
  </div>
    <!-- <nav id="nav"> -->
      <div class="position-relative p-0 p-md-3 m-md-0 text-center bg-light">
        <h1 style="text-align: center;">Companimal</h1>
        <h4 style="text-align: center; margin: 0 auto;">
          So she was considering in her own mind,(as well as she could, for the hat day
          made her feel very sleepy and stupid,) whether the pleasuere of making a diasiy-chain would be worth the
          toruble dof getting up and pinckig the daiseise,when suddenly a white rabbit with pink eyes ran close bty
          gher.
        </h4>
      </div>
    <!-- </nav> -->
    
	<!-- container marketing 원래되돌리고싶으면 이걸로  -->
     <div class="position-relative position-relative p-0 p-md-3 m-md-0 text-center bg-light" >
		<div class="row" style = "text-align: center; margin: 0;" >
			<!-- 이미지1 -->
			<div class="col-lg-4">
			<!-- svg class =bd-placeholder-img rounded-circle -->
				<svg class="bd-placeholder-img" width="400" height="400"
					role="img" aria-label="자리 표시자: 140x140"
					preserveAspectRatio="xMidYMid slice" 
					focusable="false">
					<!-- <title>Placeholder</title> -->
					<rect width="100%" height="100%" fill="#777"/>
					<!-- <text x="50%" y="50%" fill="#777" dy=".3em">
					140x140
					</text> -->
				</svg>
				<h2 class="fw-normal">
					<font style="vertical-align: inherit;">
					good1
					</font>
				</h2>
				<p>
					<a class="btn btn-secondary" href="#">
						<font style="vertical-align: inherit;">
						세부 정보보기
						</font>
					</a>
				</p>
			</div>
			
			<!-- 이미지2 -->
			<div class="col-lg-4">
				<svg class="bd-placeholder-img" width="400" height="400"
					role="img" aria-label="자리 표시자: 140x140" preserveAspectRatio="xMidYMid slice"
					focusable="false">
				<!-- <title>Placeholder</title> -->
					<rect width="100%" height="100%" fill="#777"/>
					<!-- <text x="50%" y="50%" fill="#777" dy=".3em">
					140x140
					</text> -->
				</svg>
				<h2 class="fw-normal">
					<font style="vertical-align: inherit;">
					good2
					</font>
				</h2>
				<p>
					<a class="btn btn-secondary" href="#">
					<font style="vertical-align: inherit;">
					세부 정보보기
					</font>
					</a>
				</p>
			</div>

			<!-- 이미지3 -->
			<div class="col-lg-4">
				<svg class="bd-placeholder-img" width="400" height="400"
					role="img" aria-label="자리 표시자: 140x140" preserveAspectRatio="xMidYMid slice"
					focusable="false">
				<!-- <title> Placeholder</title> -->
        			<rect width="100%" height="100%" fill="#777"/>
        		</svg>
				<h2 class="fw-normal">
					<font style="vertical-align: inherit;">
					good3
					</font>
				</h2>
				<p>
					<a class="btn btn-secondary" href="#">
					<font style="vertical-align: inherit;">
					세부 정보보기
					</font>
					</a>
				</p>
			</div>	
		</div>
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