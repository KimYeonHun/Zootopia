<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<script>
		function findPW(){
			
			var id = document.querySelector(".id").value;
			var email=document.querySelector(".email").value;

			axios({
				url:"${pageContext.request.contextPath}/help/password?member_id="+member_id+"&email"+email,
				method:"get"

			}).then(function(response){
				if(respnse.data==1){
					span.textContent="";
				}else{
					span.textContent="사용자 정보를 찾을 수 없습니다";
				}

			});


			
		}
		
	
	</script>
    <h1> 비밀번호 찾기</h1>
    <form action="findpass"  method="post">
    	<input type="text" class="id"name="member_id" placeholder="아이디">
    	<input type="text" class="email" name="email" placeholder="이메일">
    	<span></span>
    	
    	<input type="submit" value="비밀번호 찾기" onclick="findPW();" >
    </form>