<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<%@page import="ca.board.dao.cboardVO"%>

<!DOCTYPE html>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    
    <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


   <link rel="stylesheet" href="${cpath }/css/bootstrap.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  

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
	<main>
	<div class="container">
	 <form action="${cpath}/cupdate.do" method="post">
    	<input type="hidden" name="c_seq" value="${vo.c_seq}"> <!-- idx값을 get방식이 아닌 post 방식으로 넘기기, hidden을 사용해서 수정을 못하게 함 -->
    	<table class="table table-boardered">
    		<tr>
    			<td>제목</td>
    			<td>
    				<input type="text" class="form-control" name="c_title" value="${vo.c_title}">
    			</td>
    		</tr>
    		<tr>
    			<td>내용</td>
    			<td>
    				<textarea rows="10" class="form-control" name="c_content">${vo.c_content}</textarea>
    			</td>
    		</tr>
    		<tr>
    			<td>작성자</td>
    			<td>${vo.user_id}</td>
    		</tr>
    		<tr>
    			<td>작성일</td>
    			<td>${vo.c_date}</td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center">
    				<button type="submit" class = "btn btn-sm btn-success" >수정</button>
    				<button type="reset" class="btn btn-sm btn-danger ">취소</button>
    				<button type="button" class="btn btn-sm btn-primary"
							onclick="location.href='${cpath }/boardform.do'">리스트</button>
    			</td>
    		</tr>
    	</table>
    </form>
    </div>
    </main>
	  <!-- footer -->
<div class="container">
<footer class="py-5 " >


    <div class="d-flex justify-content-between py-4 my-4 border-top">
        
        <div class="row">
        <div class="col">
        <ul>
            <li>© 2022 Company, Inc. All rights reserved.</li>
            <li>주식회사 컴패니멀 어쩌구 저쩌구</li>
            <li>그래서 만든사람 어쩌구저쩌구</li>
        </ul>
    </div>
        
        <div class="col">
        <ul>
            <li>© 2022 Company, Inc. All rights reserved.</li>
            <li>주식회사 컴패니멀 어쩌구 저쩌구</li>
            <li>그래서 만든사람 어쩌구저쩌구</li>
        </ul>
    </div>
</div>
      

      <ul class="list-unstyled d-flex ">
        <li class="btn btn-primary py-4 me-2" >짹짹이</li>
        <li class="btn btn-outline-secondary py-4 me-2">인서타</li>
        <li class="btn btn-primary py-4 me-2">농농농</li>
      </ul>


  </footer>
</div>

</body>
</html>