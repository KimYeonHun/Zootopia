<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비번변경</title>
</head>
<body>
<form action="updatepass" method="post">
<div>
						
                        <label>비밀번호</label>
                        <input type="password" name="member_pw" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>비밀번호 재확인</label>
                        <input type="password" name="member_pw" class="form-control">
                    </div>
                    <button id="submit" type="submit" class="btn btn-info btn-block">비번변경하기</button>
                    </form>
</body>
</html>