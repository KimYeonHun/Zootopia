<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- <script>

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
    </script>  -->
<style>
   .w3-input {
    padding: 8px;
    display: block;
    border: none;
    border-bottom: 1px solid #ccc;
    width: 50%;
}
.w3-form {
    padding: 8px;
    display: block;
    border: none;
    border-bottom: 1px solid #ccc;
    width: 100%;
}
.w3-card{
 padding: 8px;
width:50%;
margin-left:50%;
 border: none;

 

}


</style>

<title>마이페이지</title>
</head>
<body>




	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
			
				<h3>My Page</h3>
			</div>
			<div class="w3-container">
		  <div class="w3-card">
	<div class="inputArea">
 

 

</div>

<<<<<<< HEAD
=======
<!-- 
>>>>>>> refs/remotes/origin/master
<div>

<label>프로필 사진</label>
      <img  width="415" height="300">  

 <input type="file" accept=".jpg, .gif, .png" name="f" multiple 
<<<<<<< HEAD
 onchange="preview();"> -->
<c:set var="TextValue" value="${userinfo.birthday}"/>
       </div>         
   <c:if test="${userinfo.phone ne null && userinfo.phone!=''}">${fn:substring(userinfo.phone,0,fn:length(userinfo.phone)-3)}---</c:if>


<label>이름</label> 
 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${userinfo.member_name}">
=======
 onchange="preview();">
       </div>          -->
   
>>>>>>> refs/remotes/origin/master

<%-- <label>이름</label> 
 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${ member.name }">
>>>>>>> refs/remotes/origin/master
    
    <label>권한</label> 
<input class="w3-form" type="text" id="auth" name="auth" readonly value="${userinfo.auth}">
    </div>
<<<<<<< HEAD

     <div>
     <div class="w3-container">
		  <div class="w3-card">
	<div class="inputArea">
 
<a href="pet" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">MY 펫 </a>
</div>
=======
 --%>


  </div>
  </div>
  </div>
  
			<div>

<!-- 				<form id="member" action="../member/memberUpdate" method="POST"> -->
					


					<p>

<!-- 						<label>아이디</label>  -->
<%-- 						<input class="w3-input" type="text" id="id" name="id" readonly value="${userinfo.member_id}">  --%>

						<label>아이디 : ${userinfo.member_id}</label> 

					</p>
			
					<p>
<!-- 						<label>이메일</label>  -->
<%-- 						<input class="w3-input" type="text" id="email" name="email" readonly value="${userinfo.email}">  --%>

						<label>이메일 : ${userinfo.email}</label> 

					</p>
					<p>

						<label>생일:${fn:substring(TextValue,0,10)}</label> 
<%-- 						<input class="w3-input" type="text" id="birth" name="birth" readonly value="${userinfo.birthday}">  --%>

					</p>
					<p>
						<label>전화 번호 : ${userinfo.phone}</label> 
<!-- 						<label>전화 번호</label>  -->
<%-- 						<input class="w3-input" type="text" id="phone" name="phone" readonly value="${userinfo.phone}">  --%>
					</p>
					
					<p>
						<label>성별:${userinfo.gender}</label> 
<%-- 						<input class="w3-form" type="text" id="gender" name="gender" readonly value="${userinfo.gender}"> --%>
						 


					</p>
					<p>
						<label>우편번호 : ${userinfo.post}</label> 
<!-- 						<label>우편번호</label>  -->
<%-- 						<input class="w3-form" type="text" id="post" name="post" readonly value="${userinfo.post}"> --%>
						 


					</p>
					<p>

						<label>기본 주소 : ${userinfo.baseaddr}</label> 
<!-- 						<label>기본 주소</label>  -->
<%-- 						<input class="w3-form" type="text" id="BASEADDR" name="BASEADDR" readonly value="${userinfo.baseaddr}"> --%>
						 


					</p>

					<p>
						<label>상세 주소 : ${userinfo.extraaddr}</label> 
<!-- 						<label>상세 주소</label>  -->
<%-- 						<input class="w3-form" type="text" id="EXTRAADDR" name="EXTRAADDR" readonly value="${userinfo.extraaddr}"> --%>
						 
					</p>
					
					
					
				
<!-- 				<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button> -->
					
				
<!-- 				</form> -->


<!-- 					<p class="w3-form"> -->
<!-- 						<a href="mypage2"> -->
<!-- 						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button> -->
<!-- 						</a> -->
<!-- 					</p> -->
					
					<p class="w3-form">
						<a href="passcheck">
						<input type="button" value="변경">
<!-- 						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button> -->
						</a>
					</p>

			</div>
			</div>
					
</body>
</html>