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

<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<!--  메소드 -->
<script type="text/javascript">
	function petView() {
	$("#ct").css("display","table-row");
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
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
}

 /* 세부디자인 */
    .title{
     margin: 0 auto;
     width: 443px;
   	 font-size: 30px;
     color:#FC9364;
     font-weight:700;
     border: solid 1px #FC9364;
     border-radius: 28px;
     margin-top:14px;
     margin-bottom:48px;
    }
</style>
</head>
<body>
<%@ include file="header.jsp" %>

	<!-- content -->
	<main>
		<div class="container">
			<div class="form-signin mx-auto mt-5">
				<form class="search rounded-4 p-5 mx-auto h-100">
					<img class="mx-5" src="${cpath }/images/logo.png" alt="로고"
						width="80%">
					<div class="title">
					<p class="text-center m-0">반려동물 조회 서비스</p></div>
					<div class="mb-3">
						<label for="lname">소유자명</label> <input type="text"
							class="form-control" style="height: 3em;" id="lname"
							placeholder="소유자명">
					</div>
					<div class="mb-5">
						<label for="fname">동물등록번호</label> <input type="text"
							class="form-control" style="height: 3em;" id="fname"
							placeholder="등록번호 15자리">
					</div>
					<input class="w-100 btn btn-lg btn-primary" style="height: 60px;"
						id="btn1" type="button" value="조회">
				</form>
			</div>
		</div>
		<div class="container" align="center">
			<div id="petList" width=50%></div>
			<div id="ibox" width=50%></div>
		</div>
		<script>
   
   
  
     $('#btn1').on('click', ()=>{
     	
     	ajax1();
           
   	})
    function ajax1(){
        	var lname=$('#lname').val();
        	var fname=$('#fname').val();
        	
        	$.ajax({
        		url: "${cpath}/petimg.do",
        		type : "post",
        		data : {
        			"fname" : fname
        		},
        		dataType : 'json',
        		success : function(res){
        			if(res==null){
        				alert("등록되지 않은 번호입니다.동물 등록을 먼저 해주세요")
        				
        			}else{
        			console.log(res.pet_img);
        			let code='<div class="containe">'
        			code+='<div class="content-item:center">'
        		    code+='<table border="solid 1px;" style ="width:500px; height:300px;">'
        			code+='<tr style="background-color: orange;">'
        			code+='<p></p><td colspan="3" style="color: white;" align="center">'+lname+'</td></p></tr>'
        			code+=' <tr><td rowspan="7" align="center">'			
        			code+='<img src="ComPanimal/../img/'+res.pet_img+'" style="width:240px; height:240px;"/></td>'
        			
        			
        			   	$.ajax({                
        			        url : "http://apis.data.go.kr/1543061/animalInfoSrvc/animalInfo?_type=json&dog_reg_no="+fname+"&owner_nm="+lname+"&serviceKey=%2FR3EvQD0BDHw%2FwKWewHQFMQ8MXNoIIlhw1%2BNBkbz7Ut52RP7ylh84FK27bQDPhcXi2xxtpfnbsF5iRjvUnskxg%3D%3D", 
                		type : 'get',
                		success : (res)=>{
               				let object=Object.keys(res.response.header)
               				console.log(object)
                			if(object.includes('errorMsg')){
                				alert(res.response.header.errorMsg)
                			}
        		        	else{
        		        	
        		            console.log(res.response.body.item)
        		            	/* 소유자명이나 등록번호(15자리 다쳣을경우)이 잘못됏을 경우 오류코드가 없어서 만듦  */
        		            	if(typeof res.response.body.item=="undefined"){
        		            	alert("소유자명 또는 동물등록번호가 잘못되었습니다.")
        		            	
        		           		}else{
        		           		let items = res.response.body.item;
        		            	
        		            	code +='<td>번호</td>'
        		        		code += '<td>'+items.dogRegNo+'</td></tr>';
        		        		code +='<tr><td>반려견이름</td>'
        		        		code += '<td>'+items.dogNm+'</td></tr>';
        		        		code +='<tr><td>성별</td>'
        		        		code += '<td>'+items.sexNm+'</td></tr>';
        		        		code +='<tr><td>견종</td>'
        		        		code += '<td>'+items.kindNm+'</td></tr>';
        		        		code +='<tr><td>중성화여부</td>'
        		        		code += '<td>'+items.neuterYn+'</td></tr>';
        		        		 code +='<tr><td>관할</td>'
        		        		code += '<td>'+items.orgNm+'</td></tr>';
        		        		code +='<tr><td>관할센터번호</td>'
        		        		code += '<td>'+items.officeTel+'</td>';
        		        		code += '</tr>'; 
        		        		if(${uvo.user_type} == 1  ){
	        		        		code +=	'<tr><td></td><td>전화번호 </td>'
	        		        		code += '<td>'+${uvo.user_tel}+'</td>'
	        		        		code += '</tr>';
        		        		}    			
        		        		code +='</table>'
        		        		code +='</div>'
        		        		code +='</div>';
        		        		
        		            $('#petList').html(code);
        		            }
        		        	}
                } ,
               				 error : function(){
                    			alert('등록되지 않은 번호 입니다')
          						  }		
        })
        			}
        		},
        		error : function(){
                    alert('aa')
            	}
        	})
        }
    
  
     
        
    </script>
	</main>
	<!-- content end -->

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