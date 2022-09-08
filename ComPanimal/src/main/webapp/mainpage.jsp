<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 추후에 css관련 추가하는것을 수정하기로 함(일단은 틀만 하기로만) -->
  <style>
    * {
      margin: 0;
      padding: 0;
    }

    #wrap {
      width: 100%;
    }

    #header {
      width: 100%;
      height: 100px;
      background-color: #E0F2F1;
    }

    #nav {
      width: 100%;
      height: 300px;
      background-color: #80CBC4;
    }

    #section {
      width: 100%;
      height: 580px;
      background-color: #26A69A;
    }

    #footer {
      width: 100%;
      height: 100px;
      background-color: #00897B;
    }

    .container {
      width: 1200px;
      height: inherit;
      background-color: rgba(0, 0, 0, 0.1);
      margin: 0 auto;
    }

    /* 배너 */
    @import url('https://webfontworld.github.io/NexonLv1Gothic/NexonLv1Gothic.css');

    .nexon {
      font-family: 'NexonLv1Gothic';
      font-weight: 400;
    }

    /* reset */
    * {
      margin: 0;
      padding: 0;
    }

    a {
      text-decoration: none;
      color: #000;
    }

    li {
      list-style: none;
    }

    em {
      font-style: normal;
    }

    /* headerType */
    .header__inner {
      width: 100%;
      height: 70px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 20px;
      box-sizing: border-box;
      border-bottom: 1px solid #ccc;
    }

    .header__logo {
      font-size: 30px;
      font-weight: 700;
      text-transform: uppercase;
      width: 20%;
    }

    .header__logo em {
      font-size: 18px;
      font-weight: 400;
    }

    .header__menu {
      width: 60%;
      text-align: center;
    }

    .header__menu li {
      display: inline;
    }

    .header__menu li a {
      padding: 13px 30px;
      margin: 0 5px;
      transition: background-color 0.33s;
    }

    .header__menu li a:hover {
      background-color: #F1F1F1;
      border-radius: 5px;
    }

    .header__member {
      width: 20%;
      text-align: right;
    }

    .header__members {
      width: 10%;
      text-align: right;
    }

    .header__member a {
      font-size: 16px;
      border: 1px solid #000;
      padding: 10px 30px;
      border-radius: 50px;
    }

    .header__members a {
      font-size: 16px;
      border: 1px solid #000;
      padding: 10px 30px;
      border-radius: 50px;
    }

    .img_size {
      width: 345px;
    }

    .img_center {
      text-align: center;
      /*       align-items: center; */
      /*       vertical-align: bottom; */
      /*       width: 500%; */
    }

    .text_center {
      text-align: center;
    }

    #header_imglist {
      text-align: center;
    }

    #header_img {
      height: 100px;
      width: 100%;
    }
  </style>
</head>

<!-- 추후에 수정하기로함  -->
<body>
	<!--  배너 -->
  <header id="headerType" class="header__wrap nexon">
    <div class="header__inner">
      <div class="header__logo">
        <a href="#">Compani <em>mal</em></a>
      </div>
      <nav class="header__menu">
        <ul>
          <li><a href="#">Logo</a></li>
          <li><a href="#">컴패니멀</a></li>
          <li><a href="#">반려견 등록</a></li>
          <li><a href="#">찾아주세요</a></li>
          <li><a href="#">스토리</a></li>
        </ul>
      </nav>
      <div class="header__member">
        <a href="#">Join</a>
      </div>
      <div class="header__members">
        <a href="#">Login</a>
      </div>
    </div>

  </header>
  <!-- 내용 -->
  <div id="wrap">
    <header id="header">
      <div class="container">
        <div id="header_imglist">
          <img id="header_img" src="images.png" alt="">
        </div>
      </div>
    </header>
    <nav id="nav">
      <div class="container">
        <h1 style="text-align: center;">Companimal</h1>
        <h4 style="text-align: center;">So she was considering in her own mind,(as well as she could, for the hat day
          made her feel very sleepy and stupid,) whether the pleasuere of making a diasiy-chain would be worth the
          toruble dof getting up and pinckig the daiseise,when suddenly a white rabbit with pink eyes ran close bty
          gher.</h4>
      </div>
    </nav>
    <section id=" section">
      <div class="container">
        <div class="img_center">
          <img src="images.png" alt="">
          <!--           good1 -->
          <img src="images.png" alt="">
          <!--           good2 -->
          <img src="images.png" alt="">
          <!--           good3 -->

        </div>
        <div class="text_center">
          good1
          good1
          good3
        </div>
      </div>
    </section>
    <footer id="footer">
      <div class="container" style="text-align: center;">긴글 안쓴다 ㅅㄱ </div>
    </footer>
  </div>
</body>
</html>