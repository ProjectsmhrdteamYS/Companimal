<%@page import="ca.board.dao.userVO"%>
<%@page import="ca.board.dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!-- 테스트하는 중 이것부터 -->
<%!ProjectDAO dao = new ProjectDAO(); %>
<%!userVO vo = new userVO(); %>

<% String userid = request.getParameter("user_id");
   String userpw = request.getParameter("user_pw");
%>
<!-- 이것까지 -->
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


<style>
/* 공통 style */
ul li {
	list-style: none;
	font-weight: 700;
}

a {
	text-decoration: none;
	color: #150906;
}

a:hover {
	color: orange;
	transition: background-color 0.5s;
}

.search {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>



<title>로그인</title>

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
              		<button type="button"
							class="btn btn-outline-secondary me-1"
							onclick="location.href='${cpath }/logout.do'">Logout</button>
					</c:if>
				</div>
			</div>
		</div>
	</header>

	<div class="form-signin">
		<form class="search rounded-4 p-5 mx-auto h-100" style="width: 650px;"
			action="${cpath }/user_update.do">
			<a class="logo" href="${cpath }/mainpage.do"> <img class="mx-5"
				src="${cpath }/images/logo.png" alt="로고" width="80%">
			</a> <br> <br> <br>
			<table class="form-control">
				<tr>
					<td>이름 :</td>
					<td>${uvo.user_name }</td>
				</tr>
				<tr>
					<td>아이디 :</td>
					<td>${uvo.user_id }</td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td>${uvo.user_pw }</td>
				</tr>
				<tr>
					<td>주소 :</td>
					<td>${uvo.user_addr}</td>
				</tr>
				<tr>
					<td>생년월일 :</td>
					<td>${uvo.user_birth}</td>
				</tr>
				<tr>
					<td>전화번호 :</td>
					<td>${uvo.user_tel}</td>
				</tr>
				<tr>
					<td>가입일자 :</td>
					<td>${uvo.user_joindate}</td>
				</tr>
				<tr>
					<td>개인정보동의(동의:1 비동의:0) :</td>
					<td>${uvo.user_type}</td>
				</tr>
			</table>
			<button class="w-100 btn btn-lg btn-primary mb-4"
				onclick="location.href='${cpath }/mainpage.do'" type="button">확인</button>
			<button class="w-100 btn btn-lg btn-primary mb-4"
				onclick="location.href='${cpath }/user_updateform.do'" type="button">수정</button>
		</form>
	</div>



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