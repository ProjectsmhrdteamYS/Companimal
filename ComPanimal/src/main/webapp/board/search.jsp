<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="newLine" value="<%='\n' %>" />

<!-- 조회 css -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script>
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"
	</script>
<style>
body {
	font-family: Arial;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div.container {
	max-width: 500px;
	margin-top: 80px;
	padding: 32px;
	border-radius: 5px;
	background-color: #fff;
}
</style>
<title>동물조회</title>
<!-- 외부 CSS -->
<link rel="stylesheet" href="${cpath }/board/basic.css">

<!-- 디비 연결되면 petView(idx) 로 바꾸기 -->
 

</head>
<body>
	<header>
		<!-- 여기서 헤드바 컬러수정 -->
		<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-light  "> -->
		<nav class="navbar">
			<!-- 로고 -->
			<a class="logo" href="${cpath }/mainpage.do"> <img
				src="${cpath }/images/logo.png" alt="" width="380px"
				class="d-inline-block align-text-top">
			</a>
			<!-- 네비 -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- 여기서 nav수정 컬러수정 -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/companimal.do">CompAnimal
							소개</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/searchform.do">동물 정보 조회</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="${cpath }/checkform.do">동물 정보 등록</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/boardform.do">게시판</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/findboardform.do">찾아주세요</a></li>
				</ul>
				<!-- 버튼 -->
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='${cpath }/signinform.do'">로그인</button></li>
					<li><button type="button" class="btn btn-dark"
							onclick="location.href='${cpath }/signupform.do'">회원가입</button></li>
				</ul>
			</div>
		</nav>
	</header>
	<main id="wrap">
	
	 <script type="text/javascript">
  	function petView() {
  		$("#ct").css("display","table-row");
 
  	}    
     </script>
	
		<p></p>
		<div class="container">
			<form action="javascript:petView()">
				<a class="logo" href="${cpath }/mainpage.do"> <img
					src="${cpath }/images/logo.png" alt="" width="380px"
					class="d-inline-block align-text-top"></a> <br>
				<br>
				<br> <label for="lname">소유자명</label> <input type="text" id="lname" placeholder="소유자명"> <label
					for="fname">동물등록번호</label> <input type="text" id="fname"
					 placeholder="등록번호 15자리">
				<hr>

				<!-- 이미지 업로드해서 조회 - 삭제:
			<label for="lname">QR이미지로 조회<img src=""></label>
			<br>
			<input	type="file" id="myFile" name="filename">
			<hr>
			 -->
				<input id="btn1" type="submit" value="조회">
			</form>
		</div>
		
			
			<!-- 조회버튼시 나오는 표  -->
    		<!-- 디비연결되면 <tr id="ct${vo.idx}" style="display: none">로 변경-->
		  <div id="petList"></div>
  
   <script>
   var lname=document.getElementById('lname');
   var fname=document.getElementById('fname');
   
   
   
        $('#btn1').click(()=>{
            $.ajax({                
                url : "http://apis.data.go.kr/1543061/animalInfoSrvc/animalInfo?_type=json&dog_reg_no="+fname.value+"&owner_nm="+lname.value+"&serviceKey=%2FR3EvQD0BDHw%2FwKWewHQFMQ8MXNoIIlhw1%2BNBkbz7Ut52RP7ylh84FK27bQDPhcXi2xxtpfnbsF5iRjvUnskxg%3D%3D", 
                type : 'get',
                success : (res)=>{
                	let code='<table class ="table table-bordered" id="ct"><tr style="background-color:#F57F32">'
                        code +='<th>번호</th>'
                        code +='<th>이름</th>'
                        code +='<th>견종</th>'
                        code +='<th>성별</th>'
                        code +='<th>중성화여부</th>'
                        code +='<th>관할</th>'
                        code +='<th>관할센터번호</th></tr>'
                	console.log(res.response.body.item);
                    let items = res.response.body.item;
                    code += '<tr>';
                	code += '<td>'+items.dogRegNo+'</td>';
                	code += '<td>'+items.dogNm+'</td>';
                	code += '<td>'+items.sexNm+'</td>';
                	code += '<td>'+items.kindNm+'</td>';
                	code += '<td>'+items.neuterYn+'</td>';
                	code += '<td>'+items.orgNm+'</td>';
                	code += '<td>'+items.officeTel+'</td>';
                	code += '</tr>';
                       
                	code +='</table>'
                    $('#petList').html(code);
                } ,
                error : function(){
                    alert('등록되지 않은 번호 입니다')
            }
        })
    })
    </script>
	</main>
	<footer>
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to top</a>
			</p>
			<p class="mb-1">Album example is &copy; Bootstrap, but please
				download and customize it for yourself!</p>
			<p class="mb-0">
				New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
					href="/docs/5.1/getting-started/introduction/">getting started
					guide</a>.
			</p>
		</div>
	</footer>
</body>
</html>