<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
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
<title>COMPANIMAL</title>

<style>
/* 전체 레이아웃 */
.container-fluid{width: 1600px; margin:0 auto;}
#wrap{width: 1600px; margin:0 auto;}

/* 컨테이너 */
#content{width : 1600px; height:600px; background : #888;}
.side{float: left; width : 800px; height:600px; background : #fff; padding-top:50px;}
.con1{float: left; width : 800px; height:450px; background : #fff; padding-top:50px;}
.con2{float: left; width : 800px; height:150px; background : #fff; padding-top:50px;}

/* 세부디자인 */
.side > img{width:700px; height:500px;}
.con1_tit{font-size:40px; font-weight:bold; color:#ff8330}
.con1_cont{font-size:18px; font-weight:mideum; color:#555}
#footer{clear:both; width:1200px; height:80px; background:#222;}
.con2 > .btn {width:200px; height: 60px; color:#fff; background:#ff8330; font-size: 28px; line-height: 40px;}
#footer{clear:both; width:1600px; height:80px; background:#222;}
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
				src="${cpath }/images/logo.png"
				alt="" width="380px" class="d-inline-block align-text-top">
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/companimal.do">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/search.do">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="${cpath }/check.do">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/board.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/findboard.do">찾아주세요</a></li>
					</ul>
					<!-- 버튼 -->
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark" onclick="location.href='${cpath }/signin.do'">로그인</button></li>
					<li><button type="button" class="btn btn-dark" onclick="location.href='${cpath }/signup.do'">회원가입</button></li>
				</ul>
			</div>
	</nav>
</header>
	<main id="wrap">
		
				<!-- CONTENT -->
				<div id="content">
				<div class ="side" >
					<img src="https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/52590357_580564775705078_5049194640150888448_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=xWoM0iJ4QPMAX-OEcKe&_nc_ht=scontent-ssn1-1.xx&oh=00_AT9vnA7WBwMf0CKtI8LEuwMyjiaFGkCRKLArG2JSuwBCXQ&oe=63457860" alt="companimal">
				</div>
				<!-- side -->
				
				<div class="con1">
				<div class="con1_tit">COMPANIMAL</div>
				<br><br>
				<div class="con1_cont">The dog or domestic dog (Canis familiaris or Canis lupus familiaris) is a domesticated descendant of the wolf.<br> The dog is derived from an ancient, extinct wolf, and the modern wolf is the dog's nearest<br> living relative. The dog was the first species to be domesticated, by hunter-gatherers over 15,000<br> years ago, before the development of agriculture. Due to their long association with humans, dogs have expanded to a large number of domestic individuals and gained<br> the ability to thrive on a starch-rich diet that would be inadequate for other canids</div>
				</div>
				<div class ="con2">
				<input type="checkbox" class="btn-check" id="btn-check" autocomplete="off">
				<label class="btn" for="btn-check"><strong>Companimal View</strong></label>
				</div>
				</div>
		
	</main>
<br>
<hr>
<br><br>
<footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
</body>
</html>