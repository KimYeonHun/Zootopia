<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous"></script>
    
    <h1> 아이디 찾기</h1>
    <form action="findid" method="post">
    <input type="text" name="member_name" placeholder="이름" required>
    <input type="text" name="email" placeholder="이메일" required>
    
    <button>아이디 찾기</button>
    </form>
    
  