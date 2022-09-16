<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	<!-- �ܺ� CSS -->
<link rel="stylesheet" href="${cpath }/board/basic.css">
</head>
<body>
<header>
	<!-- ���⼭ ���� �÷����� -->
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-light  "> -->
	<nav class="navbar">
			<!-- �ΰ� -->
			<a class="logo" href="${cpath }/mainpage.do"> <img
				src="${cpath }/images/logo.png"
				alt="" width="380px" class="d-inline-block align-text-top">
			</a>
			<!-- �׺� -->
			<!-- <div class="collapse navbar-collapse" id="navbarText"> -->
			<div id="navbarText">
				<!-- ���⼭ nav���� �÷����� -->
				<!-- <ul class="nav nav-pills nav-fill"> -->
				<ul class="nav">
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/companimal.do">CompAnimal �Ұ�</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/search.do">���� ���� ��ȸ</a></li>
					<li class="nav-item"><a class="nav-link active  text-dark"
						aria-current="page" href="${cpath }/check.do">���� ���� ���</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/board.do">�Խ���</a></li>
					<li class="nav-item"><a class="nav-link active text-dark"
						aria-current="page" href="${cpath }/findboard.do">ã���ּ���</a></li>
					</ul>
					<!-- ��ư -->
				<ul id="btn-basic">
					<li><button type="button" class="btn btn-dark" onclick="location.href='${cpath }/signin.do'">�α���</button></li>
					<li><button type="button" class="btn btn-dark" onclick="location.href='${cpath }/signup.do'">ȸ������</button></li>
				</ul>
			</div>
	</nav>
</header>
<main id="wrap">
<div class="container">
  <img src="${cpath }/images/mongja.jpg" alt="" width="380px" class="d-inline-block align-text-top">
  <h2>�̾߱�</h2>
  <BR>
  <HR>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">��ȣ</th>
      <th scope="col">����</th>
      <th scope="col">����</th>
      <th scope="col">�ۼ���</th>
      <th scope="col">�ۼ���</th>
      <th scope="col">��ȸ��</th>
    </tr>
  </thead>
<tbody>
<c:forEach begin="0" end="2">
    <tr>
      <th>1</th>
      <td><A CLASS="fw-bold text-dark" HREF="#">������ �ϱ�</A></td>
      <td>�ϱ⳻��</td>
      <td>������</td>
      <td>20220914</td>
       <td>1</td>
    </tr>
    </c:forEach>
  </table>
</div>
</main>


 <footer>
	<div class="container">
    <p class="float-end mb-1">
      <a href="#">Back to top</a>
    </p>
    <p class="mb-1">Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p class="mb-0">New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a href="/docs/5.1/getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer>
</body>

</html>