<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous">	</script>

	<script>
		function findPW(){
			
			var id = document.querySelector(".member_id").value;
			var email=document.querySelector(".email").value;

			
			axios({
				url:"${pageContext.request.contextPath}/help/password?member_id="+id+"&email="+email,
				method:"post"
				
				}).then(function(response){
					
					
					if(response.data==1){
						window.alert("임시비밀번호가 메일로 발송되었습니다");
						document.querySelector(".member_id").value=null;
						document.querySelector(".email").value =null;
						

					}else{
						window.alert("입력하신 회원 정보를 찾을 수 없습니다")
						document.querySelector(".member_id").value=null;
						document.querySelector(".email").value =null;
						
					}
					
				
					
				
				});
		
			}

	</script>
    <h1> 비밀번호 찾기</h1>
    

 
    	<input type="text" class="member_id" name="member_id"placeholder="아이디">
    	<input type="text" class="email" name="email"placeholder="이메일">
    	
    	
    	
    	<button onclick="findPW();">비밀번호 찾기</button>


   
   
   