<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 상세보기</title>


    <link rel="stylesheet" href="${cpath }/css/bootstrap.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
   <link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
  

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
    
 
    <%@ include file="header.jsp" %>

    <!-- container -->
    <main id="wrap" class="position-relative">
      <div class="container">
        <img src="${cpath }/images/mongja.jpg" alt="" width="380px"
          class="d-inline-block align-text-top">
        <h2>우리강아지는요!!</h2>
        <BR>
        	<form action="${cpath}/boardwrite.do" class="form-horizontal" method="post" enctype="multipart/form-data">
        <input type="hidden" name="user_id" value="${uvo.user_id}">
        <input type="hidden" name="user_name" value="${uvo.user_name}">
				<div class="input-group flex-nowrap">
            <span class="input-group-text" id="addon-wrapping">제목</span> 
            <input
              type="text" class="form-control" placeholder="제목을 입력하세요" name = "c_title"
              aria-label="title" aria-describedby="addon-wrapping">
          </div>
          <br>
          <div class="input-group">
            <span class="input-group-text">내용</span>
            <textarea class="form-control" aria-label="With textarea"
						style="height: 300px" name = "c_content"></textarea>
          </div>
          <br>
          <div class="mb-3">
            <label for="formFile" class="form-label">사진 첨부</label>
					 <input class="form-control" type="file" name="c_file">
          </div>
          <br>
          <div>
            	<input type="text" readonly="readonly" class="form-control" name ="writer" value="${uvo.user_name} ">
          </div>
  
          <br>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-success btn-sm">등록</button>
                <button type="button" class="btn btn-sm btn-primary"
             onclick="location.href='${cpath }/boardform.do'">취소</button>
  
            </div>
          </div>
        </form>
  
      </div>
      </div>
    </main>

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