<%@page import="java.util.Locale.Category"%>
<%@page import="svc.ViewService"%>
<%@page import="dao.LoginDAO"%>
<%@page import="vo.Board"%>
<%@page import="java.util.ArrayList"%>
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


.profile .panel-profile {
    border: none;
    margin-bottom: 0;
    box-shadow: none;
}

.profile .panel-heading {
    color: #585f69;
    background: #fff;
    padding: 7px 15px;
    border-bottom: solid 3px #f7f7f7;
}

.overflow-h {
    overflow: hidden;
}

.panel-heading {
    color: #000000;
    padding: 5px 15px;
}

.profile .panel-title {
    font-size: 16px;
}

.profile .profile-blog {
    padding: 20px;
    background: #fff;
}

.profile .blog-border {
    border: 1px solid #f0f0f0;
}

.profile .profile-blog img {
    float: left;
    width: 50px;
    height: 50px;
    margin-right: 20px;
}

.rounded-x {
    border-radius: 50% !important;
}

.profile .name-location {
    overflow: hidden;
}

.profile .name-location strong {
    color: #555;
    display: block;
    font-size: 16px;
}

.profile .name-location span a {
    color: #555;
}

.margin-bottom-20 {
    margin-bottom: 20px;
}

.share-list {
    margin-bottom: 0;
}


.list-inline {
    padding-left: 0;
    margin-left: -5px;
    list-style: none;
}

.list-inline li {
    display: inline-block;
    padding-right: 5px;
    padding-left: 5px;
    font-size:11px;
}

.share-list li i {
    color: #72c02c;
    margin-right: 5px;
}           


</style>
<body>
	<style type="text/css">
		.jumbotron{
			text-shadow: black 0.2em 0.2em 0.2em;
			color: white;
			background-image: url("images/review.png"); 
      background-size: 100%;

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
		<p class="text-center">이곳에서 수강생 후기를 자유롭게 작성해 보세요~ </p>
	</div>
</div>
<br>
 
<section class="container">
<form class="form-inline" action ="search" method = "post">
        <input class="form-control mr-sm-2" type="text" name = "search" id = "search" placeholder="검색 내용 입력">
        <button class="btn btn-success" type="submit">검색</button>
        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal">등록하기</button>
<button type="button" class="btn btn-danger">신고</button>
</form>
</section>
<%
@SuppressWarnings("unchecked")

	String check = (String)request.getAttribute("search");
	
if(check != null){

	if(request.getAttribute("list")instanceof ArrayList<?>){
	ArrayList<Board> searchboard = (ArrayList<Board>)request.getAttribute("list");		
	for(int i = 0; i<searchboard.size();i++){
		Board board = searchboard.get(i);	
%>
		
		<div class="container">
    <div class="col-md-9">
        <div class="panel panel-profile">
        <div class="panel-heading overflow-h">
            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>Contacts</h2>           
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="profile-blog blog-border">
                        <p>제목: <%= board.getTextname()%></p> 
                        <img class="rounded-x" src="https://bootdey.com/img/Content/user_2.jpg" alt="">
                        <div class="name-location">
                            <strong>과목명: <%= board.getName()%>  교수명: <%=board.getProname()%>  총평: <%= board.getHakjum()%> 학년: <%= board.getGrade()%></strong>                         
                        </div>
                        <div class="clearfix margin-bottom-20"></div>    
                        <p><%= board.getText()%></p>
                        <hr>                
                    </div>
                </div>    
            </div>             
        </div>              
    </div>    
    </div>    
</div> 
		<%		
	}
	}
}else if(check == null){
	ViewService view = new ViewService();
	ArrayList<Board> boardlist = new ArrayList<Board>();	
	boardlist = view.viewservice();
	
	for(int i= 0 ; i< boardlist.size(); i++){	
		Board board = boardlist.get(i);	
%>
<div class="container">
    <div class="col-md-9">
        <div class="panel panel-profile">
        <div class="panel-heading overflow-h">
            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>Contacts</h2>           
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="profile-blog blog-border">
                        <p>제목: <%= board.getTextname()%></p> 
                        <img class="rounded-x" src="https://bootdey.com/img/Content/user_2.jpg" alt="">
                        <div class="name-location">
                            <strong>과목명: <%= board.getName()%>  교수명: <%=board.getProname()%>  총평: <%= board.getHakjum()%> 학년: <%= board.getGrade()%></strong>                         
                        </div>
                        <div class="clearfix margin-bottom-20"></div>    
                        <p><%= board.getText()%></p>
                        <hr>                
                    </div>
                </div>    
            </div>             
        </div>              
    </div>    
    </div> 
</div> 
<%
}
}
%>
<div class="card">
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title" style="font-family: 'Jua'">평가를 등록해주세요</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        <div class="modal-body">
         <form action="boardwrite" method = "post">
           <div class="form-row">
             <div class="form-group col-sm-6">
               <label>강의명</label>
                <input type="text" name="name" id = "name" class="form-control" maxlength="20">
             </div>
               <div class="form-group col-sm-6">
               <label>교수명</label>
                <input type="text" name="proname" id = "proname" class="form-control" maxlength="20">
             </div>

            </div>

            <div class="form-row">
              <div class="form-group col-sm-4">
              <label>수강년도</label>
              <select name="year" id = "year" class="form-control">
                <option value="2012">2012</option>
                 <option value="2013">2013</option>
                  <option value="2014">2014</option>
                   <option value="2015">2015</option>
                    <option value="2016">2016</option>
                     <option value="2017">2017</option>
                      <option value="2018">2018</option>
                       <option value="2019">2019</option>         
              </select>
            </div>
                 <div class="form-group col-sm-4">
              <label>수강학기</label>
              <select name="season" id = "season" class="form-control">
                <option value="1학기">1학기</option>
                 <option value="2학기">2학기</option>
                  <option value="계절학기(여름)">계절학기(여름)</option>
                      <option value="계절학기(겨울)">계절학기(겨울)</option>
    
              </select>
            </div>
                   <div class="form-group col-sm-4">
              <label>수강학년</label>
              <select name="grade" id = "grade" class="form-control">
                <option value="1학년">1학년</option>
                 <option value="2학년">2학년</option>
                  <option value="3학년">3학년</option>
                      <option value="4학년">4학년</option>
    
              </select>
            </div>

            <div class="form-group col-sm-6">
              <label>&nbsp;제목</label>
              <input type="text" name="textname" id = "textname" maxlength="40" class="form-control">

            </div>
               <div class="form-group col-sm-3">
              <label>&nbsp;총평</label>
              <select name="hakjum" id = "hakjum" class="form-control">
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
                <option value="D">D</option>     
              </select>
            </div>
            </div>
            <div class="form-row">
              <label>내용</label>
              <textarea name = "text" class="form-control" cols="80" rows="6" >        
              </textarea>
            </div>
            <br>
                <button class="btn btn-primary" type="submit" style="text-align: center;">등록하기</button>
         </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="text-align: right;">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>

</body>


</html>