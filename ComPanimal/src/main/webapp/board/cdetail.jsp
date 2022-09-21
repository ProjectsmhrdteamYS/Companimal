<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="ca.board.dao.cboardVO"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="newLine" value="<%='\n'%>" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티 상세페이지</title>


<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script type="text/javascript">
	function goDel(c_seq) {
		location.href = "${cpath}/cdelete.do?c_seq=" + c_seq;
	}

	function goUpdate(c_seq) {
		location.href = "${cpath}/cupdateform.do?c_seq=" + c_seq;

	}
	</script>
	
	 <style>

	/* 공통 style */
	ul li{list-style: none; font-weight: 700; }
	a {text-decoration: none;  color :#150906;}
	a:hover {
	color: orange;
	transition: background-color 0.5s;
	}
	</style>

	</head>

	<body>
	    
	    <!-- header -->
	    <header class=" container-fluid p-3 bg-white ">
	      <div class="container p-3">
	        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
	          <a class="navbar-brand me-4" href="${cpath }/mainpage.do" >
	              <img src="${cpath }/images/logo.png" alt="" width="286" class="d-inline-block align-text-top ">
	          </a>
	  
	          <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
	            
	            <li><a href="${cpath }/companimal.do" class="nav-link px-3 link-dark">COMPANIMAL</a></li>
	            <li><a href="${cpath }/searchform.do" class="nav-link px-3 link-dark">반려견조회</a></li>
	            <li><a href="${cpath }/checkform.do" class="nav-link px-3 link-dark">반려견등록</a></li>
	            <li><a href="${cpath }/boardform.do" class="nav-link px-3 link-dark">게시판</a></li>
	            <li><a href="${cpath }/findboardform.do" class="nav-link px-3 link-dark">찾아주세요</a></li>
	          </ul>
	  
	          <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-2">
	            <input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
	          </form>
	  
	          <div class="text-end">
	             <c:if test= "${empty uvo }">
	            <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/signinform.do'">Login</button>
	            <button type="button" class="btn btn-primary"onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
	           </c:if>
	              <c:if test= "${!empty uvo }">
	              ${uvo.user_id}님 환영합니다.
	              <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/logout.do'">Logout</button>             
	              </c:if>
	          
	          </div>
	        </div>
	      </div>
	    </header>
	<main id="wrap" class="position-relative">
		<div class="container">
			<img src="${cpath }/images/mongja.jpg" alt="" width="380px"
				class="d-inline-block align-text-top">
			<h2>디테일페이지</h2>
			<BR>
			<table class="table">
				<tr>
				
					<td>제목</td>
					<td>${vo.c_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td>${fn:replace(vo.c_content,newLine,"<br>") }</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${vo.user_id}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${fn:split(vo.c_date," ")[0] }</td>
				</tr>

				<tr>
					<td colspan="2" align="center">
    	 <c:if test="${uvo.user_id eq vo.user_id}">
    	<button class = "btn btn-sm btn-success" onclick = "goUpdate(${vo.c_seq})">수정</button>
    	<button class = "btn btn-sm btn-danger" onclick = "goDel(${vo.c_seq})">삭제</button>
    	<button class = "btn btn-sm btn-primary" onclick = "location.href='${cpath}/boardform.do'">리스트</button>
 		</c:if>
        <c:if test="${uvo.user_id ne vo.user_id}">
    	<button class = "btn btn-sm btn-primary" onclick = "location.href='${cpath}/boardform.do'">리스트</button>
    	</c:if>
    				
    			</td>
				</tr>
			</table>

		</div>
		</div>
	</main>
<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color:#555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">
				<div class="row">
					<div class="col">
						<ul class="list-unstyled">
							<li class="fw-normal">© 2022 Company, Inc. All rights reserved.</li>
							<li class="fw-normal">주식회사 컴패니멀 어쩌구 저쩌구</li>
							<li class="fw-normal">그래서 만든사람 어쩌구저쩌구</li>
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