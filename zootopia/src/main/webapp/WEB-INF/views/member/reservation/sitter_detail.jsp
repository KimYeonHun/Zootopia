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
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
  <div class="container-fluid ">
<div class="offset-2 col-8">
  
  <div style="width: 580px;" >
<div style="display: flex; flex-direction: row;">
<div style="overflow: hidden; border: none; border-radius: 12px; margin-top: 100px;">
   <img src="${pageContext.request.contextPath}/petsitter/img/${sitterDetail.petsitter_no}" 
   width=200, height=200>
   </div>
   <div style="margin-left: 32px; margin-top: 50px">
   	<p style="margin-top: 100px; font-size: 25px; color: blue; line-height: 37px;
   	letter-spacing: -0.2px; font-weight:bolder;  " class="text-primary"> ${sitterDetail.petsitter_nick} 펫 매니저</p>
   </div>
 </div>   
    
    
   <div style="margin-top: 53px;">
  <h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57,60,71);" class="text-primary">펫 매니저님을 소개합니다</h2>
  
  <p style="font-size: 15px; line-height: 25px; color: rgb(85,85,85); margin-top: 32px;">${sitterDetail.career_info} </p>
  </div> 
 
   <h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px;
  margin-bottom: 20px;" class="text-primary">자격증 및 수료 </h2>
    
    <div style="display: flex; flex-direction: row; align-items: center; margin: 32px 0px;">
   <div style="width: 200px; height: 200px; filter:blur(1.25px);">
   	<img  src="${pageContext.request.contextPath}/res/img/Qua1.jpeg">
   	</div>
   	<div style="display: flex; flex-direction: column; margin-left: 32px;">
   		<p style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; "> 펫시터 전문가 교육</p>
   		<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 19px; margin-top: 7px; "> (사) K.S 문화 교육원</p>
   	</div>
   </div>
    <div style="display: flex; flex-direction: row; align-items: center; margin: 32px 0px;">
    <div style="width: 200px; height: 200px; filter:blur(1.25px);">
   	<img  src="${pageContext.request.contextPath}/res/img/Qua2.png">
   </div>

      	<div style="display: flex; flex-direction: column; margin-left: 32px;">
   		<p style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; "> 반려동물 관리사 1급</p>
   		<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 19px; margin-top: 7px; "> 한국반려동물자격협회</p>
   	</div>
   	      </div>
   	<div style="display: flex; flex-direction: row; align-items: center; margin: 32px 0px;">
    <div style="width: 200px; height: 200px; filter:blur(1.25px);">
   	<img  src="${pageContext.request.contextPath}/res/img/Qua3.jpg">
   </div>
   
   <div style="display: flex; flex-direction: column; margin-left: 32px;">
   		<p style="font-size: 15px; letter-spacing: -0.2px; line-height: 22px; "> 반려동물행동교정사 1급</p>
   		<p style="font-size: 14px; letter-spacing: -0.2px; line-height: 19px; margin-top: 7px; "> 한국반려동물자격협회</p>
   	</div>
   	</div>
   	
   	<!--  새로운 시작  -->
   	<div style="width: 375px; border"></div>
   	</div>
   	</div>  <!-- 끝부분 -->

  ${sitterDetail.monday} 
${sitterDetail.tuesday} 
 ${sitterDetail.wednesday} 
 ${sitterDetail.thursday} 
${sitterDetail.friday}
${sitterDetail.saturday} 
${sitterDetail.sunday} 
    
    
    
 ${sitterDetail.available_start_time} 
  ${sitterDetail.available_finish_time} 
      </div>   