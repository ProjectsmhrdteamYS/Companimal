<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="newLine" value="<%='\n'%>" />
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

<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

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
<script type="text/javascript">
	function moveUrl(url){
		if(${empty uvo}){
			alert("로그인 후 이용해주시기 바랍니다.")
			url="#";
		}
			location.href=url;
			}
	
	</script>

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
            <li>
						<a href="#" onclick="moveUrl('${cpath }/searchform.do')"
						class="nav-link px-3 link-dark">반려견조회</a></li>
					<li>
						<a href="#" onclick="moveUrl('${cpath }/checkform.do')"
						class="nav-link px-3 link-dark">반려견등록</a></li>
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
</body>
</html>