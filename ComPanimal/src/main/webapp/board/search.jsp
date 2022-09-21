<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="newLine" value="<%='\n'%>" />

<!-- 조회 css -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<title>동물 조회</title>
<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
	
<!--  메소드 -->	
<script type="text/javascript">
	function petView() {
	$("#ct").css("display","table-row");
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


.search {
      max-width: 650px;
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
					<button type="button" class="btn btn-outline-secondary me-1"
						onclick="location.href='${cpath }/signinform.do'">Login</button>
					<button type="button" class="btn btn-primary"
						onclick="location.href='${cpath }/signupform.do'">Sign-up</button>
				</div>
			</div>
		</div>
	</header>
	<p></p>
	<main>
	

		
		<div class="container">
			<div class="form-signin mx-auto mt-5">
			<!-- <div class="form-signin mx-auto mt-5 mb-5"> -->
				<form class="search rounded-4 p-5 mx-auto h-100" 
				  action="javascript:petView()">	
					<img class="mx-5" src="${cpath }/images/logo.png" alt="로고"
						width="80%">
					<h1 class="h3 mt-3 fw-bold text-center" style=color:#444;>반려동물 조회 서비스</h1>
					<br> <br>
					<div class="mb-3">
						<label for="lname">소유자명</label> <input type="text"
							class="form-control" style="height: 3em;"
							id="lname" placeholder="소유자명">
					</div>
					<div class="mb-5">
						<label for="fname">동물등록번호</label> <input type="text"
							class="form-control" style="height: 3em;"
							id="fname" placeholder="등록번호 15자리">
					</div>

			<!-- 이미지 업로드해서 조회 - 삭제:
			<label for="lname">QR이미지로 조회<img src=""></label>
			<br>
			<input	type="file" id="myFile" name="filename">
			<hr>-->
					<input class="w-100 btn btn-lg btn-primary" style="height: 60px;"
						id="btn1" type="submit" value="조회">
				</form>
		</div>
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
               		let object=Object.keys(res.response.header)
               		console.log(object)
                	if(object.includes('errorMsg')){
                	alert(res.response.header.errorMsg)
                	}
                	else{
                	let code='<div class="container"><table class ="table table-bordered mt-5" id="ct"><tr style="background-color:#F57F32">'
                        code +='<th>번호</th>'
                        code +='<th>이름</th>'
                        code +='<th>견종</th>'
                        code +='<th>성별</th>'
                        code +='<th>중성화여부</th>'
                        code +='<th>관할</th>'
                        code +='<th>관할센터번호</th></tr>'
                       
                    console.log(res.response.body.item)
                    	/* 소유자명이나 등록번호(15자리 다쳣을경우)이 잘못됏을 경우 오류코드가 없어서 만듦  */
                    	if(typeof res.response.body.item=="undefined"){
                    	alert("소유자명 또는 동물등록번호가 잘못되었습니다.")
                   		}else{
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
                		code +='</table></div>';
                    $('#petList').html(code);
                    }
                	}
                } ,
                error : function(){
                    alert('등록되지 않은 번호 입니다')
            }
        })
    })
    </script>
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