<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	 
<html lang="en">
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous">	</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js"integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A=="crossorigin="anonymous">
	</script>

  	<style>
		#wrap{
			margin-top:250px;
		}
		#findTitle{
			margin-bottom:50px;
		}
		
		#login-wrap{
			margin-top: 100px;
			margin-left:10px;
		
		}
		
		</style>
    
  
<%@ include file="/WEB-INF/template/header.jsp"%>
  </head>
  <body>
  
    <div class="continer-fluid text-center" id="wrap">
	<div class="row">
	<div class="offset-4 col-4">
		
    <h1 class="text-primary" id="findTitle">로그인</h1>
    
    <div class="form">
   	 <form action="login" method="post">
   			 
    <div  class="form-group">
	 <input type="text" name="member_id" class=" form-control"placeholder="아이디"  required>
	 </div>
	 
	  <div class="form-group">
	 <input type="password" name="member_pw"class=" form-control" placeholder="비밀번호"  required>
	 </div>
	 
	<button class="btn btn-primary" >로그인</button><br><br>
	 </form> 
	</div>
	
	<a  class="btn btn-info"href="findid">아이디 찾기</a>
	<a class="btn btn-info" href="findpass">비밀번호 찾기</a>
	<a class="btn btn-info" href="join">회원 가입</a>
	
	<br><br>
	
    <div class="g-signin2" data-onsuccess="onSignIn" data-width="250" data-height="50" data-longtitle="true"></div>
   
    </div>
    </div>
    </div>
    
    
       <br> <br> <br> <br> <br> <br> <br> <br> <br>
 	<%@ include file="/WEB-INF/template/footer.jsp"%>
  </body>
  
</html>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="utf-8"/> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"/> -->
<!-- <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/> -->
<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->

<!-- </head> -->
<!-- <body> -->

<!-- <a id="kakao-login-btn"></a> -->
<!-- <a href="http://developers.kakao.com/logout"></a> -->
<!-- <script type='text/javascript'> -->

<!-- </script> -->

<!-- </body> -->
<!-- </html> -->
