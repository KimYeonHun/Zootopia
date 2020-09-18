<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

	textarea{
		 resize: none;
	}
  
  </style>

<%@ include file="/WEB-INF/template/header.jsp"%>



 <div class="container-fluid ">
<div class="offset-3 col-6 " style="margin-top:150px;"  >
      
    <h1 class="text-info">지원 내용</h1>
 <div>
<div style="display: flex; flex-direction: row;">
<div style="overflow: hidden; border: none; border-radius: 12px; margin-top: 100px;">
   <img src="${pageContext.request.contextPath}/petsitter/img/${sitterDetail.petsitter_no}" 
   width=200, height=200>
   </div>
   <div style="margin-left: 32px; margin-top: 50px">
   	<p style="margin-top: 100px; font-size: 25px; color: blue; line-height: 37px;
   	letter-spacing: -0.2px; font-weight:bolder;  " class="text-info"> 닉네임 : ${sitterDetail.petsitter_nick}</p>
   </div>
 </div>   
    
   <div style="margin-top: 53px;">
   
  <div class="form-group">
				<label class="font-weight-bold text-primary">경력사항</label>
				<textarea name="petsitter_career"  class="form-control career " rows="5"  readonly  required></textarea>
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">자기 소개</label>
				<textarea name="career_info"  class="form-control introduce" rows="5" readonly required></textarea>
				</div>
				
   <p style="font-size: 15px; line-height: 25px; color: rgb(85,85,85); margin-top: 32px;">${sitterDetail.petsitter_career} </p>
  <p style="font-size: 15px; line-height: 25px; color: rgb(85,85,85); margin-top: 32px;">${sitterDetail.career_info} </p>
  </div> 
 <hr>
 
 <br> <br>
  
				  <div class="form-group">
				  <label class="font-weight-bold text-primary">[강아지]강아지가 경계하거나 이빨을 보이며 공격하려는 경우 어떻게 대처하실건가요?</label>
				 <textarea name="sitter_checklist_four"  class="form-control checkLength1 " rows="5" readonly></textarea>
				 </div>
			
				 
				 <div class="form-group">
				 <label class="font-weight-bold text-primary">[고양이]돌봄중 고양이가 나오지 않고 숨어만 있다면 어떻게 하시겠습니까?</label>
				 <textarea name="sitter_checklist_five"  class="form-control checkLength2" rows="5" readonly></textarea>
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">돌봄에 있어 가장 중요하게 생각하는 부분에 대해서 설명해주세요.</label>
				<textarea  class="form-control checkLength3" rows="5" name="sitter_checklist_six "readonly></textarea>
				</div>
	</div>
	<br>   	<br>
	
    	<div>
    		<a href ="${pageContext.request.contextPath}/petsitter/cancel_sitter" class="btn btn-info" style="width: 100%">지원 취소 하기</a>
    	</div>

   		</div>
    	</div>
    	
    	
    	<br>   	<br>   	<br>   	<br>
    	
<%@ include file="/WEB-INF/template/footer.jsp"%>

    