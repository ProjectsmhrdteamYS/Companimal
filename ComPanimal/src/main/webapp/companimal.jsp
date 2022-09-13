<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel ="stylesheet" href="./template.css">
<title>레이아웃 유형01</title>

<style>
	#content {
	width : 1200px;
	height : 600px;
	background-color : #ffff;
	}
	.con1{
	width : 30%;
	height : 600px;
	background-color : #222;
	float : left;
	clear :both;
	}
	.con2{

	height : 600px;
	background-color : #888;
	float : left;
 	clear :both; 
	}
	
</style>

</head>

<body>
	<div id="wrap">
	<!-- 로고 & NAV -->
		<div id="header">
			<header id="headerType" class="header__wrap nexon">
				<div class="header__inner">
					<div class="header__logo">
						<a href="#">web <em>site</em></a>
					</div>
					<nav class="header__menu">
						<ul>
							<li><a href="#">헤더 영역</a></li>
							<li><a href="#">슬라이드 영역</a></li>
							<li><a href="#">컨텐츠 영역</a></li>
							<li><a href="#">푸터 영역</a></li>
						</ul>
					</nav>
					<div class="header__member">
						<a href="#">로그인</a>
					</div>
				</div>
			</header>
		</div>
				<!-- CONTENT -->
				<div id="content">
				<div class = "con1" float>시바루1</div>
				<div class = "con2">시바루1</div>
				</div>
		
		<div id="footer">
			<footer id="footerType" class="footer__wrap section gmarket gray">
				<div class="footer__inner container">
					<address class="footer__right">진ㅉㅏ ㅈㄴ 어렵다</address>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>