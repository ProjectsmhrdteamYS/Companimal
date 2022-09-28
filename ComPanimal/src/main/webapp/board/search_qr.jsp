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
<title>메인</title>
<link rel="stylesheet" href="${cpath }/css/bootstrap.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-grid.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-reboot.css">
<link rel="stylesheet" href="${cpath }/css/bootstrap-utilities.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous">
	</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	</script>

<style>
ul li {
	list-style: none;
	font-weight: 600;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!-- content -->
	<div class="container">
		<div id="petList" width=50%></div>
	</div>
	<script type="text/javascript">
	 		$(document).ready(function() {
	 			const url = new URL(window.location.href);
	 			console.log(url)
	 			const urlParams = url.searchParams;
	 			console.log(urlParams.get('pet_regno'))
	 			var pet_regno = urlParams.get('pet_regno');
	    		$.ajax({
	    			url : "${cpath}/catch.do",
	    			type : "post",
	    			data :{
	    				"pet_regno" : pet_regno
	    			},
	    			dataType : 'json',
	    			success : function(res){
	        			if(res==null){
	        				alert("등록되지 않은 번호입니다.동물 등록을 먼저 해주세요")
	        				
	        			}else{
	        			console.log(res.pet_img);
	        			/* mx-auto h-100 */
	        			let code='<div class="containe">'
	        			code+='<div class="content-item:center">'
	        		    code+='<table border="solid 1px;" style ="width:500px; height:300px;">'
	        			code+='<tr style="background-color: orange;">'
	        			code+='<p></p><td colspan="3" style="color: white;" align="center">'+res.owner_nm+'</td></p></tr>'
	        			code+=' <tr><td rowspan="7" align="center">'			
	        			code+='<p>반려견 상태 (보유1,분실2) : '+res.pet_sta+'</p><img src="../img/'+res.pet_img+'" style="width:240px; height:240px;" alt=""></td>'
	        			var lname = res.owner_nm
	        			var fname = res.pet_regno
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
	        })
		</script>
	<!-- content end -->

	<!-- footer -->
	<div class="container">
		<footer class="py-5" style="color: #555;">
			<div class="d-flex justify-content-between py-4 my-4 border-top">

				<div class="float-start pt-2 pe-5"
					style="border-right: 1.4px solid; border-color: #DEE2E6;">
					<img src="${cpath }/images/black_symbol.jpg" alt="#"
						style="width: 120px;">
				</div>

				<div class="col px-5 pt-3" style="width: 300px;">
					<ul class="list-unstyled" style="color: #858789;">
						<li class="fw-bold"><h4>
								COMPANIMAL
								</h3></li>
						<li class="fw-normal">주소ㅣ광주 동구 예술길 31-15 3층</li>
						<li class="fw-normal">번호ㅣ062-123-4567</li>
						<li class="fw-normal">Copyright 2022. Companimal Co., Ltd.
							all Rights reserved.</li>
					</ul>
				</div>

				<div>
					<ul class="list-unstyled d-flex float-end mt-2"
						style="height: 54px;">
						<li class="btn btn-primary me-2"
							onclick="location.href='https://twitter.com/?lang=ko'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-twitter" style="font-size: 1.3em"></i></li>
						<li class="btn btn-primary me-2"
							onclick="location.href='https://www.instagram.com'"
							style="width: 56px; line-height: 38px;"><i
							class="bi bi-instagram" style="font-size: 1.3em"></i></li>
						<a href="#" title="Popover title"
							data-bs-content="Popover body content is set in this attribute.">
							<li class="btn btn-primary me-2"
							style="width: 56px; line-height: 38px;"><i
								class="bi bi-arrow-up-circle-fill" style="font-size: 1.3em"></i></li>
						</a>


					</ul>
				</div>
			</div>
		</footer>
	</div>
	<!-- footer end -->
</body>
</html>