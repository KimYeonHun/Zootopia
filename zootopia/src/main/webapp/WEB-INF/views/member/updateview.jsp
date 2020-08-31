<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
    <img src="C:/Users/user1/Desktop/petsitter.png">
    <div class="w3-container">

 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${ member.name }">
    
<input class="w3-form" type="text" id="auth" name="auth" readonly value="${ member.auth}">
    </div>


  </div>
  <br>
			<div>
				<form id="member" action="/member/memberupdate" method="post">
								

					<p>
						<label>아이디</label>
						${memberDto.member_id}
<%-- 						<input class="w3-input" type="hidden" name="member_id" readonly="readonly" value="${memberDto.member_id}">  --%>
					</p>
			
					<p>
						<label>이메일</label> 
						<input class="w3-input" type="email" id="email" name="email" value="${memberDto.email}"> 
					</p>
					<p>
						<label>생일</label> 
						<input class="w3-input" type="date" id="birth" name="birthday" value="${memberDto.birthday}"> 
					</p>
					<p>
						<label>전화 번호</label> 
						<input class="w3-input" type="text" id="phone" name="phone" value="${memberDto.phone}"> 
					</p>
					
					<p>
						<label>성별</label> 
						<input class="w3-form" type="text" id="gender" name="gender" value="${memberDto.gender}">
						 
					</p>
					<p>
						<label>우편번호</label> 
						<input class="w3-form" type="text" id="post" name="post" value="${memberDto.post}">
						 
					</p>
<!-- 					<p> -->
<!-- 						<label>기본 주소</label>  -->
<%-- 						<input class="w3-form" type="text" id="BASEADDR" name="BASEADDR" readonly value="${ member.baseaddr }"> --%>
						 
<!-- 					</p> -->
<!-- 					<p> -->
<!-- 						<label>상세 주소</label>  -->
<%-- 						<input class="w3-form" type="text" id="EXTRAADDR" name="EXTRAADDR" readonly value="${ member.extraaddr }"> --%>
						 
<!-- 					</p> -->
					
					
					
					<p class="w3-form">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
					</p>
				</form>
			</div>
			</div>
			</div>
			</div>
</body>
</html>