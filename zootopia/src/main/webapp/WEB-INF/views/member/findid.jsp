<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
 
    
    <h1> 아이디 찾기</h1>
    
    <form action="findid" method="post">
    <input type="text" class="member_name" name="member_name" placeholder="이름" required>
    <input type="text" class="email" name="email"placeholder="이메일" required>
   	<button>아이디 찾기</button>
    </form>
	
	<c:if test="${param.error !=null}">
		<div><h6>해당하는 정보로 아이디를 찾지 못했습니다</h6></div>
	</c:if>
	
	
  

    
   
   
 	
    
  