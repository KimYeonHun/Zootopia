<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
	
    <h1> 인증 번호 입력 </h1>
    
    
	<h3>가입 시 사용한 메일로 인증번호가 발송되었습니다 </h3>
	
	
	
	<form action="check" method="post">
    <input type="text" name="secret" class="secret" required>
    <button>인증하기</button>
    </form>
   
   <c:if test="${param.error !=null}">
		<div><h6>인증번호를 다시 확인해주세요</h6></div>
	</c:if>

    