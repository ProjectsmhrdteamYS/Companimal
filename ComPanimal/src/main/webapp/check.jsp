<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
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

<!-- 
동물 등록정보 DB

[등록하기]
(회원이름-(id)끌어옴)
동물등록번호 : [ ]
동물이름
사진
현재상태 : 라디오 (찾아주세요 기능에도)


------------------
조회(회원)
등록번호 : [셀렉트▼]
---------------------
[출력창] = 공공정보 + 자체동물정보

동물사진
전화번호
등록번호	:	0	RFID_CD	: 41000
개이름	:	0	성별	:   0
품종	:	0	중성화여부:  0
관할기관	:	0	관할기관연락처: 000
관할기관 지도


---------------------
조회(비회원)
소유자명 : [입력] 
등록번호 : [입력]
or
QR 이미지 : 업로드 [확인]
---------------------
출력창 :
동물사진
<소유자 분실정보 선택시>
(전화번호) - 
등록번호	:	0	RFID_CD	: 41000
개이름	:	0	성별	:   0
품종	:	0	중성화여부:  0
관할기관	:	0	관할기관연락처: 000
관할기관 지도
 -->
</body>
</html>