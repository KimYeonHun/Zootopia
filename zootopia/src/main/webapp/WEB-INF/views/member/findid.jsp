<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
    <h1> 아이디 찾기</h1>
    <form action="findid" method="post">
    <input type="text" name="member_name" placeholder="이름" required>
    <input type="text" name="email" placeholder="이메일" required>
    
    <button>아이디 찾기</button>
    </form>
    
    <h1>${member_id}</h1>