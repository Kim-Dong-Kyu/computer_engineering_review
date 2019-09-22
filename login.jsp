<%@ page language="java" contentType="text/html; 
    charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>강의 평가 웹사이트</title>
<link rel="stylesheet"  href="css/bootstrap.css">
<link rel="stylesheet"  href="custom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kanit|Nanum+Brush+Script&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
  body#LoginForm{ background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 50%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}


</style>
<body id="LoginForm">

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp">컴수알</a>

  <!-- Links -->
  <ul class="nav navbar-nav ml-auto">
    <li class="nav-item">
   <%
	String id = (String)session.getAttribute("id");
    
    if(id == null){
%>
      <a class="nav-link" href="login.jsp">로그인 </a>
<%
    }
    else{
%>
 <a class="nav-link" href="logout">로그아웃 </a>
<%
    }
%>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="register.jsp">회원가입 </a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="carasel.jsp">학년별 수업</a>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="review.jsp">수강생 후기</a>
    </li>    
  </ul>
  <ul class="navbar-nav justify-content-end">
  	  <li>  
      <form class="form-inline" action="/action_page.php">
        <input class="form-control mr-sm-2" type="text" placeholder="Search">
        <button class="btn btn-success" type="submit">Search</button>
      </form>
      </li>
  </ul>

</nav>
<br><br>
<div class="container">

<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2 style="font-family:'Jua' ">로그인</h2>
   <p style="font-family:'Jua' ">아이디와 페스워드를 입력해 주세요</p>
   </div>
    <form action = "login" method = "post">
        <div class="form-group">
            <input type="text" class="form-control" id="id" name = "id" placeholder="아이디">
        </div>

        <div class="form-group">

            <input type="password" class="form-control" id="pw" name = "pw" placeholder="비밀번호">

        </div>
        <button type="submit" class="btn btn-primary">Login</button>     
    </form>
    </div>
<p class="botto-text" style="font-family: 'Jua'">© 2019 Copyright:대전대학교 컴퓨터 공학과</p>
</div>
</div>

</body>


</html>