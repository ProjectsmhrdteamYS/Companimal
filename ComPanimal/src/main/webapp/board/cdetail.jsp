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

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<script type="text/javascript">
	function goDel(c_seq) {
		location.href = "${cpath}/cdelete.do?c_seq=" + c_seq;
	}

	function goUpdate(c_seq) {
		location.href = "${cpath}/cupdateform.do?c_seq=" + c_seq;

	}
	
	function goCDel(cmt_seq,c_seq){
		console.log("글번호", c_seq)
		console.log("댓글번호",cmt_seq)
		location.href="${cpath}/commentdelete.do?cmt_seq=" +cmt_seq +"&c_seq="+c_seq;
	}
	
	
  	
	</script>

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
</style>

</head>

<body>

<%@ include file="header.jsp" %>

	<!-- container -->
	<main id="wrap" class="position-relative">
		<div class="container">
			<img src="${cpath }/images/mongja.jpg" alt="" width="380px"
				class="d-inline-block align-text-top">
			<h2></h2>
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
					<td>사진</td>
					<td><img src="${cpath }/img/${vo.c_file}" width="250px" height="250px" ></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${vo.user_name}</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>${fn:split(vo.c_date," ")[0] }</td>
				</tr>

				<tr>
					<td colspan="2" align="center"><c:if
							test="${uvo.user_id eq vo.user_id}">
							<button class="btn btn-sm btn-success"
								onclick="goUpdate(${vo.c_seq})">수정</button>
							<button class="btn btn-sm btn-danger"
								onclick="goDel(${vo.c_seq})">삭제</button>
							<button class="btn btn-sm btn-primary"
								onclick="location.href='${cpath}/boardform.do'">리스트</button>
						</c:if> <c:if test="${uvo.user_id ne vo.user_id}">
							<button class="btn btn-sm btn-primary"
								onclick="location.href='${cpath}/boardform.do'">리스트</button>
						</c:if></td>
				</tr>
			</table>
		</div>
		<!-- 댓글 -->
		<div class="container">
			<c:if test="${!empty uvo}">
				<form action="${cpath}/inputcomment.do" class="form-horizontal"
					method="post">
					<input type="hidden" name="c_seq" value="${vo.c_seq}">
					<div class="input-group flex-nowrap">
						<input type="hidden" name="user_id" value="${uvo.user_id}">
						<input type="hidden" name="user_name" value="${uvo.user_name}">
						<span class="input-group-text" id="addon-wrapping">${uvo.user_name}</span>
						<input type="text" class="form-control" placeholder="댓글 입력"
							name="cmt_content" aria-label="title"
							aria-describedby="addon-wrapping">
						<button type="submit" class="btn btn-sm btn-primary">등록</button>
					</div>
				</form>
			</c:if>
		</div>
	<!-- 댓글 리스트 -->
		<div class="container">

			<table class="table">
				<c:forEach var="cvo" items="${list }">
					<c:if test="${cvo.c_seq eq vo.c_seq}">
					<input type="hidden" name="cmt_seq" value="${cvo.cmt_seq}">
						<tr>
							<td>${cvo.user_name}</td>
							<td>${cvo.cmt_content }
							<c:if test="${cvo.user_id eq uvo.user_id }">
							<button type="button" class="btn float-end" onclick="goCDel(${cvo.cmt_seq},${vo.c_seq})">삭제</button>
							</c:if>
							<%--<button type="button" class="btn float-end" onclick="goCUp(${cvo.cmt_seq},${vo.c_seq})">수정</button></td> --%>
						
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		
	</main>
	<!-- container end -->
	
	<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color:#555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">
				
				<div class="float-start pt-2 pe-5" style="border-right:1.4px solid; border-color:#DEE2E6;"><img src="${cpath }/images/black_symbol.jpg" alt="#" style="width:120px;"></div>
				
				<div class="col px-5 pt-3" style ="width: 300px;">
					<ul class="list-unstyled" style="color:#858789;">
						<li class="fw-bold"><h4>COMPANIMAL</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd. all Rights reserved.</li>
					</ul>
				</div>
				
				<div>
					<ul class="list-unstyled d-flex float-end mt-2" style="height:54px;">					
						<li class="btn btn-primary me-2"  onclick="location.href='https://twitter.com/?lang=ko'" style="width:56px; line-height:38px;"><i class="bi bi-twitter" style="font-size:1.3em"></i></li>					
						<li class="btn btn-primary me-2" onclick="location.href='https://www.instagram.com'" style="width:56px; line-height:38px;"><i class="bi bi-instagram" style="font-size:1.3em"></i></li>
						<a href="#"  title="Popover title" data-bs-content="Popover body content is set in this attribute.">
						<li class="btn btn-primary me-2" style="width:56px; line-height:38px;"><i class="bi bi-arrow-up-circle-fill" style="font-size:1.3em"></i></li>
						</a>
						
					
					</ul>
				</div>
				</div>				
			</footer>
		</div>
			<!-- footer end -->
</body>
</html>