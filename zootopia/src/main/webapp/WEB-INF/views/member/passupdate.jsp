<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form action="passupdate" method="post">
<div>
<input type="hidden" name="member_id" class="form-control">
                        <label>비밀번호</label>
                        <input type="password" name="member_pw" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>비밀번호 재확인</label>
                        <input type="password" name="member_pw" class="form-control">
                    </div>
                    <button id="submit" type="submit" class="btn btn-info btn-block">비번변경하기</button>
                    </form>
