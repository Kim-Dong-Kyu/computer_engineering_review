<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</head>

<body>
	<style type="text/css">
		.jumbotron{
			text-shadow: black 0.2em 0.2em 0.2em;
			color: white;
			background-image: url("images/computer.jpg"); 
   		}

   		p,h3{
           font-family:  'Jua', sans-serif;
   		}
   		.bg-4 { 
  background-color: #2f2f2f;
  color: #ffffff;
	</style>

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


    <!-- Dropdown -->

    
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
	<div class="jumbotron text-center">
		<h1 class="text-center" style="font-family: 'Jua', sans-serif;">컴공 수업 알리미. </h1>
		<p class="text-center">대전대학교 컴퓨터 공학과 수강생들의 후기를 만든 사이트 입니다 </p>
	
	</div>
</div>
<br>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3 >뭐하는 곳이에요?</h3>
      <p>&nbsp;컴공 수업 알리미는 컴퓨터 공학과 수업을 들어본 수강생들이 후기를 자유롭게 올릴 수 있는 사이트 입니다</p>
      <p>&nbsp;어떤 수업을 들어야할지 잘 모르는 저학년 학생들을 위해 만들었습니다 </p>
    </div>
    <div class="col-sm-4">
      <h3 >사용법은요?</h3>
      <p>&nbsp;사용법은 어렵지 않습니다 아래 추가 버튼을 누르고 과목명, 평가, 후기등을 자유롭게 올려주시면 되요
      </p>
      
    </div>
    <div class="col-sm-4">
      <h3>개발환경은 어떻게 되나요?</h3>        
      <p>&nbsp;개발환경으로는  JSP 파일 내 HTML5/CSS3/JS를 포함한 부트스트랩 으로 디자인을 했습니다 </p>
      <p>&nbsp;서블릿 MySQL 으로 데이터 베이스 처리를 했습니다 컴파일러/에디터/서버등 자세히 알고 싶다면 아래 버튼을 눌러주세요</p>

      <button type="button" class="btn btn-info">자세히 알아보기>></button>
    </div>
  </div>
  <div class="footer-copyright text-center py-3" style="font-family: 'Jua'">© 2019 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/" style="font-family: 'Jua'"> 대전대학교 컴퓨터공학과</a>
  </div>
</body>


</html>