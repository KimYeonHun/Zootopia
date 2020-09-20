<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
		#findTitle{
			margin-bottom:50px;
		}
		
		#login-wrap{
		margin-top: 50px;
 			margin-left:20px; 
		
		}
	</style>
    
<%@ include file="/WEB-INF/template/header.jsp"%>
 <div class="continer-fluid text-center" id="wrap">
		<div class="row">
		<div class="offset-4 col-4">
    
    <h2 class="text-secondary" id="findTitle"> 아이디 찾기</h2>
    
    <div class="form">
    <form action="findid" method="post">
    <div class="form-group">
    <input type="text" class="member_name form-control" name="member_name" placeholder="이름" required>
    </div>
    <div class="form-group">
    <input type="text" class="email form-control"  name="email"placeholder="이메일" required>
    </div>
   	<button class="btn btn-secondary" >아이디 찾기</button>
    </form>
    </div>
	
   	
	<c:if test="${param.error !=null}">
		<div><h6 class="font-weight-bold text-danger">해당하는 정보로 아이디를 찾지 못했습니다</h6></div>
	</c:if>
	

  <div class="row" id="login-wrap">
      <div class="offset-1 col-9">
<%--       		<a class="btn btn-info " href="${pageContext.request.contextPath}/">메인화면</a> --%>
      		&emsp;<a class="btn btn-warning" href="${pageContext.request.contextPath}/member/login">로그인 </a>
      		&emsp;<a class="btn btn-warning" href="${pageContext.request.contextPath}/member/findpass">비밀번호 찾기</a>
      		</div>
      </div>
    
   	</div>
	</div>
	</div>
   <br> <br> <br> <br> <br> <br> <br> <br> <br>
 	<%@ include file="/WEB-INF/template/footer.jsp"%>
    
  