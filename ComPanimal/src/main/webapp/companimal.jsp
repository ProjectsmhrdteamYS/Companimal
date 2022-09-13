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

/* 컨테이너 */
#content{width : 1200px; height:600px; background : #888;}
.side{float: left; width : 600px; height:600px; background : #fff; padding:50px;}
.con1{float: left; width : 600px; height:450px; background : #fff; padding-left:50px; padding-top:40px;}
.con2{float: left; width : 600px; height:150px; background : #fff; padding-left:50px; padding-top:20px;}


/* 세부디자인 */
.side > img{width:500px; height:500px;}
.con1_tit{font-size:40px; font-weight:bold; color:#0d6efd}
.con1_cont{font-size:18px; font-weight:mideum; color:#555}

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
				<div class ="side" >
					<img src="https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/52590357_580564775705078_5049194640150888448_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=xWoM0iJ4QPMAX-OEcKe&_nc_ht=scontent-ssn1-1.xx&oh=00_AT9vnA7WBwMf0CKtI8LEuwMyjiaFGkCRKLArG2JSuwBCXQ&oe=63457860" alt="companimal">
				</div>
				<!-- side -->
				
				<div class="con1">
				<div class="con1_tit">COMPANIMAL</div>
				<br><br>
				<div class="con1_cont">The dog or domestic dog (Canis familiaris or Canis lupus familiaris) is a domesticated descendant of the wolf. The dog is derived from an ancient, extinct wolf, and the modern wolf is the dog's nearest living relative. The dog was the first species to be domesticated, by hunter-gatherers over 15,000 years ago, before the development of agriculture. Due to their long association with humans, dogs have expanded to a large number of domestic individuals and gained the ability to thrive on a starch-rich diet that would be inadequate for other canids</div>
				</div>
				<div class ="con2">
				<input type="checkbox" class="btn-check" id="btn-check" autocomplete="off">
				<label class="btn btn-primary" for="btn-check">Companimal View</label>
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