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




<!-- // function color(){ -->
<!-- // 	var color = document.getElementById("color_mon").value; -->
	
<!-- // 	if(color == '월요일'){ -->
<!-- // 		document.getElementById("changecolor").style.backgroundColor="red"; -->
<!-- // 	} -->
 	
<!-- // } -->


<!-- // <textarea name="test" onkeyUp="chkForm()">표준말로 입력하시오.</textarea> -->

<!-- // function chkForm(){ -->
<!-- //     if(document.getElementsByName("test")[0].value.match(/흐미|옴마|잡것/)){ -->
<!-- //         document.getElementsByName("test")[0].style.color = "red"; -->
<!-- //     } -->
<!-- // } -->



<%@ include file="/WEB-INF/template/header.jsp"%>



 <div class="container-fluid ">
<div class="offset-3 col-6 " style="margin-top:150px;"  >
  
  <div>
<div style="display: flex; flex-direction: row;">
<div style="overflow: hidden; border: none; border-radius: 12px; margin-top: 100px;">
   <img src="${pageContext.request.contextPath}/petsitter/img/${sitterDetail.petsitter_no}" 
   width=200, height=200>
   </div>
   <div style="margin-left: 32px; margin-top: 50px">
   	<p style="margin-top: 100px; font-size: 25px; color: blue; line-height: 37px;
   	letter-spacing: -0.2px; font-weight:bolder;  " class="text-info"> ${sitterDetail.petsitter_nick} 펫 매니저</p>
   </div>
 </div>   
    
    
   <div style="margin-top: 53px;">
  <h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color: rgb(57,60,71);" class="text-info">펫 매니저님을 소개합니다</h2>
  
  <p style="font-size: 15px; line-height: 25px; color: rgb(85,85,85); margin-top: 32px;">${sitterDetail.career_info} </p>
  </div> 
 <hr>
 
 <br> <br>
   <h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px;
<!--   margin-bottom: 20px;" class="text-info">자격증 및 수료 </h2> -->
    
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
   	

<!--    	<div> -->
<!--    	<div style="width: 1000px; border-radius: 8px; border: 1px solid rgb(223,227,234); -->
<!--    	box-shadow: rgba(0,0,0,0.07) 1px 3px 7px; padding: 38px; margin-top: 38px; "> -->
<!--    		<h2 style="font-weight: 600; font-size: 17px; letter-spacing: -0.2px; line-height: 25px; color:rgb(57,60,71); -->
<!--    		margin-bottom: 24px;"> 펫시터 활동 요일</h2> -->
<!--    		<div> -->
<!--    			<div style="display: flex; flex-direction: row; justify-content: space-between;"> -->
   			
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; -->
<!--    					"id="changecolor">  -->
<!--    					     -->
<%--    					<input type="hidden"  value="${sitterDetail.monday}" > --%>
<!--    						<p style="font-weight: 600; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center;  -->
<!--    						color: white;" >월</p> -->
<!--    					</div> -->
<!--    				</div> -->
   				
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);"> -->
<!--    							화 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
   				
<!--    					<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);"> -->
<!--    							수 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);"> -->
<!--    							목 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: rgb(157, 164, 180);"> -->
<!--    							금 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: rgb(242, 243, 247);"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center;  color: white;"> -->
<!--    							토 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
   				
<!--    				<div style="display: flex; margin: 0.5px; background-color: white; width: 100px; height: 100px;"> -->
<!--    					<div style="display: flex; align-items: center; justify-content: center; flex-grow: 1; background-color: #6cc3d5;"> -->
<!--    						<P style="font-weight: 400; font-size: 12px; letter-spacing: -0.2px; line-height: 14px; text-align: center; color: white;"> -->
<!--    							일 -->
<!--    						</P> -->
<!--    					</div> -->
<!--    				</div> -->
   				
<!--    			</div> -->
   			
   		

   		</div> 
   		<div style="">
   		<a href="${pageContext.request.contextPath}/member/reservation/ready"><button style="width: 100%;"  class="btn btn-info btn-lg btn-round pull-right" >예약 하기</button></a>
   		</div>
   		<br><br><br><br><br><br><br><br><br><br>
   		

   		</div>
    	</div>
    	
<%@ include file="/WEB-INF/template/footer.jsp"%>
<!--    	</div> 새로운 시작의 끝부분 -->

<!--    	</div>  끝부분 -->

  
  
  
 