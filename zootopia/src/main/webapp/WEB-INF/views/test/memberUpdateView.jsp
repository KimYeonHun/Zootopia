<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script>
	$(document).ready(function(){
		// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
 			})
		
			
			});
			
				
			

		function preview(){
    //console.log("preview 실행!");
    
    var fileTag = document.querySelector("input[name=f]");
    
    console.log(fileTag.files);
    //if(fileTag에 선택된 파일이 있다면){
    if(fileTag.files.length > 0){
        //하나라고 가정하고 0번 위치의 파일만 읽어와서 미리보기를 실행!
        
        var reader = new FileReader();
        reader.onload = function(data){//data는 읽은 파일의 내용
            //미리보기를 구현
            var imgTag = document.querySelector("img");
            imgTag.src = data.target.result;
        };
        reader.readAsDataURL(fileTag.files[0]);//읽도록 지시
    }
    else{//취소한 경우
        var imgTag = document.querySelector("img");
        imgTag.src = "";
    }
    
}
	</script>
	<body>
<form action="../test/memberimg" method="post" enctype="mutipart/form-data">
<label>프로필 사진</label>
      <img  width="415" height="300">  

 <input type="file" accept=".jpg, .gif, .png" name="f" multiple 
 onchange="preview();">
 <button class="btn btn-success" type="submit">등록</button>
 </form>        
 <c:set var="TextValue" value="${userinfo.birthday}"/>
         
		<section id="container">
			<form action="../test/memberUpdate" method="post">
				<div class="form-group has-feedback">
					<label class="control-label">아이디</label>
					<input class="form-control" type="text"  name="member_id" value="${userinfo.member_id}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">이름</label>
					<input class="form-control" type="text"  name="member_name" value="${userinfo.member_name}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">이메일</label>
					<input class="form-control" type="text"  name="email" value="${userinfo.email}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">생일</label>
					<input class="form-control" type="date"  name="birthday" value="${fn:substring(TextValue,0,10) }"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">전화 번호</label>
					<input class="form-control" type="text"  name="phone" value="${userinfo.phone}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">성별</label>
					<input class="form-control" type="text"  name="gender" value="${userinfo.gender}" readonly="readonly"/>						
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">우편번호</label>
					<input class="form-control" type="text"  name="post" value="${userinfo.post}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">기본 주소</label>
					<input class="form-control" type="text"  name="baseaddr" value="${userinfo.baseaddr}"/>
				</div>
				<div class="form-group has-feedback">
					<label class="control-label">상세 주소</label>
					<input class="form-control" type="text"  name="extraaddr" value="${userinfo.extraaddr}"/>
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>
		
	</body>
	
</html>