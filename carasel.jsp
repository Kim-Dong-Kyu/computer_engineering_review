<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>강의 평가 웹사이트</title>
<link rel="stylesheet"  href="css/bootstrap.css">
<link rel="stylesheet"  href="css/custom.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
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
    .carousel-inner img {
    width: 1104px;
    height: 650px;
  }
	</style>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp"><p>컴수알</a>

  <!-- Links -->
  <ul class="nav navbar-nav ml-auto">
    <li class="nav-item">
      <a class="nav-link" href="login.jsp">로그인 </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="register.jsp">회원가입 </a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="#">학년별 수업</a>
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
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
     <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src= "images/1-1-2.jpg" alt="1학년 수업" width="780" height="100">
      <div class="carousel-caption">
        <h3 >1학년</h3>
        <p>1학년 떄는 프로그래밍 기초와 진로 강의를 들을 수 있습니다</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="images/2.png" alt="Chicago" width="780" height="100">
      <div class="carousel-caption">
        <h3>2학년</h3>
        <p>2학년 때는 고급 프로그래밍과 컴퓨터공학 기초에 대해 배워요</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="images/3.png" alt="New York" width="780" height="100">
      <div class="carousel-caption">
        <h3>3학년</h3>
        <p>3학년 때는 앞서 배웠던 프로그래밍 언어와 지식을 이용해
        </p>
        <p> 모바일/웹/네트워크 등 실제 프로젝트를 해보는 수업을 들을 수 있습니다  </p>
      </div>   
    </div>
        <div class="carousel-item">
      <img src="images/4.png" alt="New York" width="780" height="100">
      <div class="carousel-caption">
        <h3>4학년</h3>
        <p>4학년 때는 산업체 현장실습과 캡스톤 디자인을 통해 실무를 익히고 
        </p>
        <p> 딥러닝/인공지능 과 같은 현재 핫한 IT 지식을 배울 수업을 들을 수 있습니다   </p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>
</body>

 <div class="footer-copyright text-center py-3" style="font-family: 'Jua'">© 2019 Copyright:
    <a href="#" style="font-family: 'Jua'"> 대전대학교 컴퓨터공학과</a>
  </div>
</body>

</html>