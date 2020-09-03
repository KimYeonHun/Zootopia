<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
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
     <script> 
        $(function(){
         
            $.get("http://localhost:8080/zootopia/petsitter/petsitterpage", function(response){
                console.log(response);
           

                var label = [];
                var data = [];

                for(var i=0; i < response.length; i++){
                    label.push(response[i].month);
                    data.push(response[i].count);
                }

               
                var ctx = document.querySelector("#chart").getContext("2d");

           
                var chart = new Chart(ctx, {
             
                    type: 'line',

               
                    data: {

                   labels: ['6월','7월', '8월', '9월'],


                                  datasets: [{
                               label: '매칭 현황',
                               data: [10, 15, 13, 14], 


               
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            
                        }],

                    },

             
                    options: {
                        scales: {
                            yAxes:[{
                                ticks:{
                                    
                                    suggestedMin : 0,         //최소값 지정
                                    suggestedMax : 10,    //최대값 지정
                                }
                            }]
                        }
                    }
                });
            });
        });
    </script>
<style>

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
<input type="file" accept=".jpg, .gif, .png" name="f" multiple 
 onchange="preview();">
                
                                                          </div>
<label>이름</label> 
 <input class="w3-form" type="text" id="name" name="member_name" readonly value="${ member.name }">
    
    <label>권한</label> 
<input class="w3-form" type="text" id="auth" name="auth" readonly value="${ member.auth}">
    </div>


  </div>
     	<div class="w3-container">
		  <div class="w3-card">
	<div class="inputArea">


 <canvas width="442" height="221" class="chartjs-render-monitor" id="chart" style="width: 442px; height: 221px; display: block;"></canvas>
    </div>
     
     
  </div>
  <br>
			<div>
				<form id="member" action="../member/mypage" method="post">
					
					<p>
						<label>아이디</label> 
						<input class="w3-form" type="text" id="id" name="id" readonly value="${petsitter.id }"> 
					</p>
			
					<p>
						<label>이메일</label> 
						<input class="w3-form" type="text" id="email" name="email" readonly value="${ petsitter.email }"> 
					</p>
					<p>
						<label>생일</label> 
						<input class="w3-form" type="date" id="birth" name="birth" readonly value="${ petsitter.birth }"> 
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
					
					
					
					<p class="w3-form">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">펫시터 정보 변경</button>
					</p>
				</form>
			</div>
			</div>
			</div>
	
			
</body>
</html>