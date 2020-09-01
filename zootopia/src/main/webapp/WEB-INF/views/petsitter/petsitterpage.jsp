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
	<div class="inputArea">
 <input type="file" id="gdsImg" name="file" />
 <div class="select_img"><img src="" /></div>
 
 <div class="w3-container">

</div>



    <div class="w3-container">

<label>이름</label> 
 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${ petsitter.name }">
    
    <label>권한</label> 
<input class="w3-form" type="text" id="auth" name="auth" readonly value="${petsitter.auth}">
    </div>


  </div>
  <br>
			<div>
				<form id="member" action="../petsitter/petsitterpage" method="post">
					
					<p>
						<label>아이디</label> 
						<input class="w3-form" type="text" id="id" name="id" readonly value="${ petsitter.id }"> 
					</p>
			
					<p>
						<label>이메일</label> 
						<input class="w3-form" type="text" id="email" name="email" readonly value="${petsitter.email }"> 
					</p>
					<p>
						<label>생일</label> 
						<input class="w3-form" type="date" id="birth" name="birth" readonly value="${petsitter.birth }"> 
					</p>
					<p>
						<label>전화 번호</label> 
						<input class="w3-form" type="text" id="phone" name="phone" readonly value="${ petsitter.phone }"> 
					</p>
					
					<p>
						<label>성별</label> 
						<input class="w3-form" type="text" id="gender" name="gender" readonly value="${ petsitter.gender }">
						 
					</p>
					<p>
						<label>우편번호</label> 
						<input class="w3-form" type="text" id="post" name="post" readonly value="${ petsitter.post }">
						 
					</p>
					<p>
						<label>기본 주소</label> 
						<input class="w3-form" type="text" id="BASEADDR" name="BASEADDR" readonly value="${ petsitter.baseaddr }">
						 
					</p>
					<p>
						<label>상세 주소</label> 
						<input class="w3-form" type="text" id="EXTRAADDR" name="EXTRAADDR" readonly value="${ petsitter.extraaddr }">
						 
					</p>
					
					
					
					
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">펫시터 정보 변경</button>
				
				</form>
			</div>
			</div>
			</div>
			</div>
</body>
</html>