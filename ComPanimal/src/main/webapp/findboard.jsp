<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel ="stylesheet" href="./template.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<title>레이아웃 유형01</title>

</head>
<body>
	<div id="wrap">
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
		<div>
		<table class="table table-striped table-primary">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
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