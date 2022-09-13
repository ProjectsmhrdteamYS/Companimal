<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>동물 등록</title>
<style>
body {
	font-family: Arial;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
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

	<a href="#" class="btn btn-primary my-2">동물 등록</a>
	<a href="#" class="btn btn-primary my-2">동물 조회</a>

	<div class="container">
		<form action="#">
			<label for="fname">동물등록번호</label> <input type="text" id="fname"
				name="firstname" placeholder="등록번호 15자리"> <label for="lname">동물
				이름</label> <input type="text" id="lname" name="lastname"
				placeholder="Pet name.."> <label for="lname">사진 등록 </label>
			<input type="file" id="myFile" name="filename"> <input
				type="submit" value="등록">
		</form>
	</div>

	<pre> - 구성할 내용(임시메모)
동물 등록정보 DB

[등록하기]
(회원이름-(id)끌어옴)
동물등록번호 : [ ]
동물이름
사진
현재상태 : 라디오 (찾아주세요 기능에도)


------------------
조회(회원)
등록번호 : [셀렉트▼]
---------------------
[출력창] = 공공정보 + 자체동물정보

동물사진
전화번호
등록번호	:	0	RFID_CD	: 41000
개이름	:	0	성별	:   0
품종	:	0	중성화여부:  0
관할기관	:	0	관할기관연락처: 000
관할기관 지도


---------------------
조회(비회원)
소유자명 : [입력] 
등록번호 : [입력]
or
QR 이미지 : 업로드 [확인]
---------------------
출력창 :
동물사진
<소유자 분실정보 선택시>
(전화번호) - 
등록번호	:	0	RFID_CD	: 41000
개이름	:	0	성별	:   0
품종	:	0	중성화여부:  0
관할기관	:	0	관할기관연락처: 000
관할기관 지도
 
	</pre>
	-->
</body>
<footer>
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
		<p class="mb-1">Album example is &copy; Bootstrap, but please
			download and customize it for yourself!</p>
		<p class="mb-0">
			New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
				href="/docs/5.1/getting-started/introduction/">getting started
				guide</a>.
		</p>
	</div>
</footer>
</html>