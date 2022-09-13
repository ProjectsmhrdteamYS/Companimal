<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>동물 등록</p>

<div class="container">
  <form action="#">
    <label for="fname">동물등록번호</label>
    <input type="text" id="fname" name="firstname" placeholder="등록번호 15자리">

    <label for="lname">동물 이름</label>
    <input type="text" id="lname" name="lastname" placeholder="Pet name..">

	<label for="lname">사진 등록    </label>
  	<input type="file" id="myFile" name="filename">

    <input type="submit" value="등록">
  </form>
</div>

</body>
</html>