<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<%@ include file="/WEB-INF/template/header.jsp"%>
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
         
            $.get("${pageContext.request.contextPath}/member/mypage", function(response){
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
                               label: 'Zootoita 총 매칭 현황',
                               data: [600, 400, 300, 900], 


               
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
                                    suggestedMax : 1000,    //최대값 지정
                                }
                            }]
                        }
                    }
                });
            });
        });
    </script>
<style type="text/css">
 .jumbotron{
         background-color: RGB(72,209,199);
         color: white;
}



</style>

<title>마이페이지</title>
</head>
<body>

<br>   	<br>   	<br>   	<br>  <br>   <br>  <br>
<div class="container-fluid">
<div class ="row">
			<div class="offset-sm-4 col-sm-4 jumbotron">
			
			
			<h1 id="myHeader">My Page</h1>
			
			    <div class="form-group">
			
		
	

 

<div>


      <img  width="312" height="150  ">  

 <input type="file" accept=".jpg, .gif, .png" name="f" multiple onchange="preview();">

</div>
	<div class="w3-container w3-card-4">
<c:set var="TextValue" value="${userinfo.birthday}"/>
       </div>         

             
	<div class="w3-container w3-card-4">

			
				<div class="home-thumb">
 <c:choose>
	<c:when test="${userinfo.auth eq '펫시터'}">
	<p>
	<canvas width="442" height="221" class="chartjs-render-monitor" id="chart" style="width: 442px; height: 221px; display: block;"></canvas>
	 	 </p>
	 	 	 <p>
	 	 <a class="btn btn-info" href="${pageContext.request.contextPath}/pet/petinfo" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">My Pet 등록 하기 </a>
	 	</p>
	 	</c:when>
	 <c:otherwise>
	<p>
	 <a class="btn btn-info" href="${pageContext.request.contextPath}/petsitter/petsitter_join" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">펫시터 신청하기</a>
	<p>
	 	<a  class="btn btn-info" href="${pageContext.request.contextPath}/petsitter/list">펫시터 지원 내역
</a>
	 </p>
	
	
	 <p>
	 <a class="btn btn-info" href="${pageContext.request.contextPath}/pet/petinfo" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">My Pet 등록 하기 </a>
		</p>
	</c:otherwise>
	  </c:choose>
	  
	   <a class="btn btn-info" href="${pageContext.request.contextPath}/pet/list" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.8s">My Pet 목록 </a>
	   <!--<c:choose>
	<c:when test="${!empty petsitterDto.member_id != null}">
	<p>
	 	<a  class="btn btn-info" href="${pageContext.request.contextPath}/petsitter/list">펫시터 지원 내역
</a>
	 </p>
	 	
	 	</c:when>
	   </c:choose>
	  -->
</div>
</div>
</div>


<p>

</p>
	         






<div>

			<form id="member"  method="POST"> 
<p>
<label>이름 :</label> 
 ${userinfo.member_name} 
</p>
<p>
    <label>권한 : </label> 
${userinfo.auth}
</p>
					
</div>

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
					
					
					
			
					
					<p class="w3-form">
						<a href="passcheck">
				
		<a class="btn btn-info" href="memberUpdateView">회원정보 수정</a>
						</a>
					</p>

	</div>
</div>
	</div>
	
		
	
					
</body>
</html>
    	<br>   	<br>   	<br>   	<br>
    	
<%@ include file="/WEB-INF/template/footer.jsp"%>
