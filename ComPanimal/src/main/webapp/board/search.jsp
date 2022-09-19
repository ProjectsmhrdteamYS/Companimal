<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>메인</title>

<title>동물 조회</title>
   <link rel="stylesheet" href="${cpath }/css/bootstrap.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <style>

ul li{list-style: none;}
    </style>

</head>
<body>
	<!-- header -->
    <header class=" container-fluid p-3 bg-white ">
        <div class="container p-3">
          <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start ">
            <a class="navbar-brand me-4" href="${cpath }/mainpage.do"  >
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
              <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/signinform.do'">Login</button>
              <button type="button" class="btn btn-primary" onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
            </div>
          </div>
        </div>
      </header>
      
      
      <!-- content -->
      
	<div class="container p-lg-5" style="height: 780px;">
	<div class="form-signin mx-auto mt-5"  >
  	<form  class="border rounded-4 p-5 mx-auto" style="width: 650px; height: 680px;">
    <br>
    <img class="mb-4" src="${cpath }/images/222.jpg"alt="로고" width="100%" height="120px">
    <h1 class="h3 mt-3 fw-normal text-center">반려동물 조회 서비스</h1>

    <div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label">소유자 명</label>
      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="소유자 이름을 입력하세요"
      style="height: 3em;">
    </div>
    <div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label">동물 등록번호</label>
      <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="반려견 등록번호를 입력하세요"
      style="height: 3em;">
    </div>
    

    <div class="checkbox mt-3 mb-3 " >
      
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit" style="height: 60px;">submit</button>
    <p class="mt-5 mb-3 text-muted">© 2022–2025</p>
  </form>
</div>

</div>
    
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
</body>
</html>