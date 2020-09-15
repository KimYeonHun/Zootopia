<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js"integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A=="crossorigin="anonymous">
	
</script>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"crossorigin="anonymous">

<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"crossorigin="anonymous"></script>
    
    <style>
		#wrap{
			margin-top:250px;
		}
		#result-border{
			border: 1px black;
		}
			#login-wrap{
			margin-top: 50px;
		
		
		}
    </style>
    <div class="continer-fluid text-center" id="wrap">
		<div class="row">
		<div class="offset-4 col-4">

  

    <h3 class="card-text">회원님의 아이디는&nbsp;<span class="font-weight-bold text-info">${member_id}</span>&nbsp;입니다</h3>
   
  
  
    <div class="row" id="login-wrap">
      <div class="offset-2 col-8">
      		<a class="btn btn-info " href="${pageContext.request.contextPath}/">메인화면</a>
      		&emsp;<a class="btn btn-info" href="${pageContext.request.contextPath}/member/login">로그인 하러 가기</a>
      		</div>
      </div>
      
       </div>

    </div>
    </div>
