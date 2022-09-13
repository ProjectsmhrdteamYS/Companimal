<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel ="stylesheet" href="./template.css">

<!-- Css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">

<!-- Javascript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
</head>
<body>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
		<div class="container-fluid">
			<a class="navbar-brand " href="#"> <img
				src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				CompAnimal Home
			</a>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="nav nav-pills nav-fill">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">CompAnimal 소개</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">게시판</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">찾아주세요</a></li>
					<button type="button" class="btn btn-info">로그인</button>
					<button type="button" class="btn btn-info">회원가입</button>
				</ul>
			</div>
		</div>
	</nav>
</header>
      <div>
      <table class="table table-striped table-primary">
  
  <div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
      <img src="https://yt3.ggpht.com/ytc/AMLnZu9OcYbmczVAQ8oR_3XIrm9JtKwoBjqwMwcR-i5b=s900-c-k-c0x00ffffff-no-rj" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">우리 아기 재롱이 </h5>
        <p class="card-text">너무 귀여워..</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202105/18/1f5ffa1d-4ef0-4360-b2bf-85014af97e52.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a short card.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://img.youtube.com/vi/5vWe9-nfKyg/hqdefault.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
      
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
      <img src="https://i.pinimg.com/736x/d1/d1/44/d1d144b365c3a570af83005eb172b6bb.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card h-100">
      <img src="data:image/jpeg;base64,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" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
    <div class="col">
    <div class="card h-100">
      <img src="https://i.ytimg.com/vi/5731bMW9i8Y/mqdefault.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
</div>
 <footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
      </div>

</body>
</html>