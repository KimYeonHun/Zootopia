<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>

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


<div>
<label>프로필 사진</label>
      <img  width="415" height="300">  
<!-- 
 <input type="file" accept=".jpg, .gif, .png" name="f" multiple 
 onchange="preview();"> -->
       </div>         
   

<%-- <label>이름</label> 
 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${ member.name }">
    
    <label>권한</label> 
<input class="w3-form" type="text" id="auth" name="auth" readonly value="${ member.auth}">
    </div>
 --%>

  </div>
  <br>
			<div>
					<p>
						<label>아이디 : ${userinfo.member_id}</label> 
					</p>
			
					<p>
						<label>이메일 : ${userinfo.email}</label> 
					</p>
					<p>
						<label>전화 번호 : ${userinfo.phone}</label> 
					</p>
					<p>
						<label>우편번호 : ${userinfo.post}</label> 
					</p>
					<p>
						<label>기본 주소 : ${userinfo.baseaddr}</label> 
					</p>
					<p>
						<label>상세 주소 : ${userinfo.extraaddr}</label> 
					</p>

					<p class="w3-form">
						<a href="mypage2">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
						</a>
					</p>
			</div>
			</div>
			</div>
			</div>
			
</body>
</html>