<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/template/header.jsp"%>


<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>


<h1>Pet 정보</h1>
<div style="display: flex; flex-direction: row;">
<div style="overflow: hidden; border: none; border-radius: 12px; margin-top: 100px;">
   <img src="${pageContext.request.contextPath}/petsitter/img/${list.petsitter_no}" 
   width=200, height=200>
   </div>
   </div>
<h3>대표 pet 이름 : ${petDto.pet_name}</h3>
<input type="hidden" name="member_id" value="${userinfo.member_id}">      
<h3>대표 pet 성별 : ${petDto.pet_gender}</h3>
<h3>대표 pet 품종 : ${petDto.pet_kind}</h3>
<h3>대표 pet 나이: ${petDto.pet_age}살</h3>
<h3>대표 pet 크기: ${petDto.pet_size}</h3>
<h3>대표 pet 정보 : ${petDto.pet_intro}</h3>
<h3>대표 pet 접종 여부: ${petDto.pet_vaccin}</h3>
<h3>대표 pet 대소변 유무 : ${petDto.pet_toilet}</h3>


			<a class="btn btn-info" href="${pageContext.request.contextPath}">홈으로</a>
				<a class="btn btn-info" href="${pageContext.request.contextPath}/pet/list">뒤로가기</a>

<%@ include file="/WEB-INF/template/footer.jsp"%>