<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous"></script>
    
 	<script> 
		function findID(){
			
			var secret = document.querySelector(".secret").value;
		var div = document.querySelector(".list-wrap");
			
		axios({
				url:"${pageContext.request.contextPath}/help/certid?secret="+secret,
				method:"post"
				
 				}).then(function(response){
					
					
 					if(response.data==0){
					window.alert("인증번호를 다시 확인해주세요");
					
						}else{
					div.innerHTML = "";
						var h3 = document.createElement("div");
						h3.textContent="회원님의 아이디는 입니다";
						div.appendChild(h3);
						document.querySelector(".secret").value=null;
 					}
					
 				});
			
			
		
			}

	</script>
    <h1> 인증 번호 입력 </h1>
    
    

    <input type="text" name="secret" class="secret" required>
    <button onclick=" findID();">인증하기</button>
    
    <div class="list-wrap" ></div>

    