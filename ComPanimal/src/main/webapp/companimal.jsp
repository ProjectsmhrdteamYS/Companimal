<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
#wrap{margin: 0 auto;}
#content{width : 1200px; height:600px; background : #888;}
.side{float: left; width : 600px; height:600px; background : #777; }
.con1{float: left; width : 600px; height:300px; background : #666;}
.con2{float: left; width : 600px; height:300px; background : #555;}


#footer{clear:both; width:1200px; height:80px; background:#222;}

</style>



</head>


<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
		<div class="container-fluid">
			<a class="navbar-brand " href="#"> <img
				src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				Companimal
			</a>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="nav nav-pills nav-fill">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Features</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Pricing</a></li>
					<button type="button" class="btn btn-info">로그인</button>
				</ul>
			</div>
		</div>
	</nav>
</header>
<body>
	<div id="wrap">
		</div>
				<!-- CONTENT -->
				<div id="content">
				<div class ="side" >이미지구간</div>
				<div class ="con1">타이틀</div>
				<div class ="con2">내용</div>
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