<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	</script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<title>회원가입</title>

<style>

  /* 공통 style */
  ul li{list-style: none; font-weight: 700; }
  a {text-decoration: none;  color :#150906;}
  a:hover {
  color: orange;
  transition: background-color 0.5s;
  }
  body {
    min-height: 100vh;
  }

  .input-form {
    max-width: 650px;

    margin-top: 80px;
    padding: 50px;

    background: #fff;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
    box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
  }

  .input-form  input{
    height: 48px;
  }
  </style>


</head>
<body>
	<!-- header -->
	<header class=" container-fluid p-3 bg-white ">
		<div class="container p-3">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
				<a class="navbar-brand me-4" href="${cpath }/mainpage.do"> <img
					src="${cpath }/images/logo.png" alt="" width="286"
					class="d-inline-block align-text-top ">
				</a>

				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

					<li><a href="${cpath }/companimal.do"
						class="nav-link px-3 link-dark">COMPANIMAL</a></li>
					<li><a href="${cpath }/searchform.do"
						class="nav-link px-3 link-dark">반려견조회</a></li>
					<li><a href="${cpath }/checkform.do"
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
					</c:if>
				</div>
			</div>
		</div>
	</header>
	<!-- header end -->
	<main id="wrap">
		<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<img class="mx-5" src="${cpath }/images/logo.png" alt="로고" width="80%" >
				<form class="validation-form" novalidate action="${cpath}/signup.do" method="get">
					<div class="row">
						<div class="mb-3">
							<label for="id">ID</label>
							<input type="text" class="form-control" name="user_id" placeholder="" required>
							<div class="invalid-feedback">아이디를 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="pw">비밀번호</label> <input type="text"
								class="form-control" name="user_pw"
								placeholder="8~16자 영문 소문자, 숫자를 사용하세요." required>
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" name="user_name" placeholder="" value=""
								required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="birth">생년월일</label> <input type="text"
								class="form-control" name="user_birth" placeholder="220913"
								value="" required>
							<div class="invalid-feedback">생년월일을 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="phnum">전화번호</label> <input type="text"
								class="form-control" name="user_tel" placeholder="01012345678"
								required>
							<div class="invalid-feedback">전화번호를 입력해주세요.</div>
						</div>
						<div class="mb-3">
							<label for="address">주소</label> <input type="text"
								class="form-control" name="user_addr" placeholder="광주광역시 대웅동"
								required>
							<div class="invalid-feedback">주소를 입력해주세요.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<label class="custom-control-label" for="aggrement">개인정보
							수집 및 이용에 동의합니다</label>
							<br>
							<input type="radio" class="custom-control-input" id="aggrement" required name="user_type" value="1">
							<label class="custom-control-label" for="aggrement">동의</label>
							<input type="radio" class="custom-control-input" id="aggrement" required name="user_type" value="0">
							<label class="custom-control-label" for="aggrement">비동의</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn-lg btn-block"
						style="background-color: #ff7530; border: none; color: white"
						type="submit">가입 하기</button>
				</form>
			  </div>
			</div>
		</div>
		
		<script>window.addEventListener('load', () => {
      		const forms = document.getElementsByClassName('validation-form');
      
      		Array.prototype.filter.call(forms, (form) => {
        		form.addEventListener('submit', function (event) {
          			if (form.checkValidity() === false) {
            			event.preventDefault();
            			event.stopPropagation();
          			}
          			form.classList.add('was-validated');
        			}, false);
      			});
    		}, false);
		</script>
	</main>
	<!-- footer -->
	<div class="container">
		<footer class="py-5 ">
			<div class="d-flex justify-content-between py-4 my-4 border-top">
				<div class="row">
					<div class="col">
						<ul class="list-unstyled">
							<li>© 2022 Company, Inc. All rights reserved.</li>
							<li>주식회사 컴패니멀 어쩌구 저쩌구</li>
							<li>그래서 만든사람 어쩌구저쩌구</li>
						</ul>
					</div>
				</div>
				<ul class="list-unstyled d-flex ">
					<li class="btn btn-primary py-4 me-2">짹짹이</li>
					<li class="btn btn-outline-secondary py-4 me-2">인서타</li>
					<li class="btn btn-primary py-4 me-2">농농농</li>
				</ul>
			</div>
		</footer>
	</div>
	<!-- footer end -->
</body>
</html>