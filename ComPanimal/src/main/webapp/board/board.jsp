<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">

<!-- �ܺ� CSS -->
<link rel="stylesheet" href="basic.css">


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</head>
<body>

<header>
	<!-- ���⼭ ���� �÷����� -->
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary"> -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-light  ">
		<div class="container-fluid">
			<!-- �ΰ� -->
			<a class="navbar-brand text-dark" href="#"> <img
				src="https://img.insight.co.kr/static/2018/11/05/700/888208025o428h6408hs.jpg"
				alt="" width="30" height="24" class="d-inline-block align-text-top">
				CompAnimal Home
			</a>
			<!-- �׺� -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- ���⼭ nav���� �÷����� -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">CompAnimal �Ұ�</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="search.jsp">���� ���� ��ȸ</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">���� ���� ���</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">�Խ���</a></li>
					<li class="nav-item"><a class="nav-link active bg-light text-dark"
						aria-current="page" href="#">ã���ּ���</a></li>
					<!-- ��ư -->

			
					<!-- <div id="btn-basic">
					<button type="button" class="btn btn-dark">�α���</button>
					<button type="button" class="btn btn-dark">ȸ������</button>
					</div> -->
				</ul>
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark">�α���</button></li>
					<li><button type="button" class="btn btn-dark">ȸ������</button></li>
				</ul>
			</div>
		</div>
	</nav>
</header>


<body>

<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    
    <thead>
    <tr>
      <th scope="col">��ȣ</th>
      <th scope="col">����</th>
      <th scope="col">����</th>
      <th scope="col">�ۼ���</th>
      <th scope="col">��ȸ��</th>
    </tr>
  </thead>
  
<tbody>

<c:forEach begin="0" end="2">
    
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
       <td>@mdo</td>
    </tr>
    </c:forEach>
  </table>
</div>
</body>


 <footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
  

</html>