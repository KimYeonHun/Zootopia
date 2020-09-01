<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
	<script>
		function findID(){
			
			var secret = document.querySelector(".secret").value;
		
			
			axios({
				url:"${pageContext.request.contextPath}/member/check?secret="+secret,
				method:"post"
				
				}).then(function(response){
					
					
					if(response.data==0){
						window.alert("인증번호를 다시 확인해주세요");
						document.querySelector(".secret").value=null;
					
					}
					
				
				});
		
			}

	</script>
    <h1> 인증 번호 입력 </h1>
    
 
    <input type="text" name="secret" class="secret" required>
    <button onclick=" findID();">인증하기</button>
    
    <div class="list-wrap" ></div>
   
    