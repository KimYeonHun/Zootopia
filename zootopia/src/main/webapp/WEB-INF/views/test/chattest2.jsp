<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅실험(직접)</title>
</head>
<body>
<!-- 못한거 id를 만들어야 한다 -->
<!-- 왜 id를 만들어야 하는가? -->
<!-- <textarea rows="5" cols="30"></textarea><br> -->
<!-- 메시지:<input type="text"><br> -->
<!-- 상대아이디:<input type="text"><br> -->
<!-- <button type="submit">전송</button> -->
<script>
	//웹소켓 접속 함수
	var socket;//소켓이있어야 종료되므로 밖으로꺼낸다
	function connect(){
		var uri = "ws://localhost:8082/zootopia/chattest2";//ip,외부ip쓰시오
		socket = new WebSocket(uri);//연결
		
		//연결 알려줌
		socket.onopen = function(){
			console.log("서버와 연결 완료");
		}
		socket.onclose = function(){
			console.log("서버와 연결 종료");
		}
		socket.onerror = function(){
			console.log("에러 발견");
		}
		socket.onmessage = function(e){
			//메시지 출력을 위한 파라미터 'e'
			//1.메시지를 심은 공간
			//2.메시지
			//3.메시지를 출력할 공간
			var div = document.createElement("div");//태그생성<babo></babo>//
			div.textContent=e.data;//<babo>e.data</babo>
			document.querySelector(".message-wrap").appendChild(div);//내새끼껄 내가한다는데!!!.appendChild(textarea)
			//.massage-wrap있는대에다가 <babo>e.data</babo>넣기
			//태그는 안보임
		}
		
	}
	//웹소켓 종료 함수
	function disconnect(){
		socket.close();
	}
	//메세지 보내기 함수:입력될 글자를 불러와 서버에 전송
	function send(){
		//입력된글자 불러오기
		var text = document.querySelector("#chat-input").value;
		//입력되지않은거 보내기
		if(!text){
			return null;
		}
		//서버에 보내기
		socket.send(text);
		console.log(text);
		document.querySelector("#chat-input").value = "";
	}
</script>

<textarea></textarea><br>
메시지:<input type="text"><br>
상대아이디:<input type="text"><br>
<input type="text" id="chat-input">
<button onclick="send();">전송</button><br>

<button onclick="connect();">접속</button>
<button onclick="disconnect();">종료</button>
<div class="message-wrap"></div>
</body>
</html>