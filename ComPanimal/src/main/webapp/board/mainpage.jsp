<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
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
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  

    <style>
    ul li{list-style: none; font-weight: 600; }
    a {text-decoration: none;}
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
              <c:if test= "${empty uvo }">
              <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/signinform.do'">Login</button>              
              <button type="button" class="btn btn-primary" onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
              </c:if>

              <c:if test= "${!empty uvo }">
              ${uvo.user_id}님 환영합니다.
              <button type="button" class="btn btn-outline-secondary me-1" onclick="location.href='${cpath }/logout.do'">Logout</button>              
              </c:if>              
            
            </div>
          </div>
        </div>
      </header>
      
      <!-- banner -->
      
      <main class="container-fluid">
        
      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner ">
          <div class="carousel-item active">
            <img src="${cpath }/images/111.jpg" class="d-block w-100"  alt="...">
          </div>
          <div class="carousel-item">
            <img src="${cpath }/images/222.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="${cpath }/images/333.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      
    </div>
    </main>



      <!-- info -->
      <div class="mt-3 p-3  text-center w-100 " style="height: 600px;">
        <img class="d-block mx-auto mb-5" src="${cpath }/images/big_logo.png" alt="" width="700" >
        <div class="col-lg-6 mx-auto ">
          <p class="lead mb-4">입양시까지 책임지고 보호하며 안전한 입양을 통해 다시금 반려동물로서의 
            <br>행복한 삶을 살아갈 수 있도록 최선을 다하겠습니다. 컴패니멀과 함께 따뜻한 가족을 만들어 보아요</p>
            <br>
          <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
            <button type="button"  class="btn btn-primary btn-lg px-4 gap-3"><a class="text-white" href ="check.html">반려견 등록</button></a>
            <button type="button"  class="btn btn-outline-secondary btn-lg px-4"><a class="text-dark" href="search.html">반려견 조회</a></button>

            
          </div>
        </div>
      </div>
    



      <div class="container">
<!-- col_1 -->
      <div class="row justify-content-center">
      <div class="col-md-1 me-4 text-center ">
        <a href="/companimal.html"><img class="rounded-circle" src="${cpath }/images/icon_1.png" alt="icon_1" width="100" height="100"></a>
        
      </div>
<!-- col_2 -->

<div class="col-md-1 me-4 text-center">
  <a href="/search.html"><img class="rounded-circle" src="${cpath }/images/icon_2.png" alt="icon_1" width="100" height="100"></a>
        
      </div>
<!-- col_3 -->

<div class="col-md-1 me-4 text-center">
  <a href="/check.html"><img class="rounded-circle" src="${cpath }/images/icon_3.png" alt="icon_1" width="100" height="100"></a>  
      </div>
<!-- col_4 -->

<div class="col-md-1 me-4 text-center">
  <a href="/companimal.html"><img class="rounded-circle" src="${cpath }/images/icon_4.png" alt="icon_1" width="100" height="100"></a>
       
</div>
<!-- con_5 -->
<div class="col-md-1 me-4 text-center">
  <a href="/companimal.html"><img class="rounded-circle" src="${cpath }/images/icon_5.png" alt="icon_1" width="100" height="100"></a>
       
</div>

<div class="row pt-5">
  <div class="col-md-6">
    <div class="h-100 p-5 text-white bg-dark rounded-3">
      <h2>Change the background</h2>
      <p>Swap the background-color utility and add a `.text-*` color utility to mix up the jumbotron look. Then, mix and match with additional component themes and more.</p>
      <button class="btn btn-outline-light" type="button">Example button</button>
    </div>
  </div>
  <div class="col-md-6">
    <div class="h-100 p-5 bg-light border rounded-3">
      <h2>Add borders</h2>
      <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
      <button class="btn btn-outline-secondary" type="button">Example button</button>
    </div>
  </div>
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