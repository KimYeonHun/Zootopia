<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅실험(직접)</title>
</head>
<style>
*{ margin: 0; padding: 0; }
 
.chat_wrap .header { font-size: 14px; padding: 15px 0; background: #F18C7E; color: white; text-align: center;  }
 
.chat_wrap .chat { padding-bottom: 80px; }
.chat_wrap .chat ul { width: 100%; list-style: none; }
.chat_wrap .chat ul li { width: 100%; }
.chat_wrap .chat ul li.left { text-align: left; }
.chat_wrap .chat ul li.right { text-align: right; }
 
.chat_wrap .chat ul li > div { font-size: 13px;  }
.chat_wrap .chat ul li > div.sender { margin: 10px 20px 0 20px; font-weight: bold; }
.chat_wrap .chat ul li > div.message { display: inline-block; word-break:break-all; margin: 5px 20px; max-width: 75%; border: 1px solid #888; padding: 10px; border-radius: 5px; background-color: #FCFCFC; color: #555; text-align: left; }
 
.chat_wrap .input-div { position: fixed; bottom: 0; width: 100%; background-color: #FFF; text-align: center; border-top: 1px solid #F18C7E; }
.chat_wrap .input-div > textarea { width: 100%; height: 80px; border: none; padding: 10px; }
 
.format { display: none; }
</style>
</head>
<body>
<script>
var socket;
//연결 할떄....
function connect(){
	var uri = "ws://localhost:8080/zootopia/chattest2";//ip,외부ip쓰시오
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
		
		console.log(arguments);
			console.log("메세지가 도착했습니다");
			console.log(e);
		
		var div = document.createElement("div");
			
			div.textContent = e.data;
		//e.data는 JSON string이므로 객체로 바꾸어 필요한 정보를 추출
// 		var obj = JSON.parse(e.data);			
// 		div.textContent = "["+obj.id+"] " + obj.payload;
// 		document.querySelector(".message-wrap").appendChild(div);

			document.querySelector(".message-wrap").appendChild(div);
	}
	
}
//종료 할떄....
function disconnect(){
	socket.close();
}
//메시지 보낼떄......
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
// const Chat = (function(){
//     const myName = "blue";
 
//     // init 함수
//     function init() {
//         // enter 키 이벤트
//         $(document).on('keydown', 'div.input-div textarea', function(e){
//             if(e.keyCode == 13 && !e.shiftKey) {
//                 e.preventDefault();
//                 const message = $(this).val();
 
//                 // 메시지 전송
//                 sendMessage(message);
//                 // 입력창 clear
//                 clearTextarea();
//             }
//         });
//     }
 
//     // 메세지 태그 생성
//     function createMessageTag(LR_className, senderName, message) {
//         // 형식 가져오기
//         let chatLi = $('div.chat.format ul li').clone();
 
//         // 값 채우기
//         chatLi.addClass(LR_className);
//         chatLi.find('.sender span').text(senderName);
//         chatLi.find('.message span').text(message);
 
//         return chatLi;
//     }
 
//     // 메세지 태그 append
//     function appendMessageTag(LR_className, senderName, message) {
//         const chatLi = createMessageTag(LR_className, senderName, message);
 
//         $('div.chat:not(.format) ul').append(chatLi);
 
//         // 스크롤바 아래 고정
//         $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
//     }
 
//     // 메세지 전송
//     function sendMessage(message) {
//         // 서버에 전송하는 코드로 후에 대체
//         const data = {
//             "senderName"    : "blue",
//             "message"        : message
//         };
 
//         // 통신하는 기능이 없으므로 여기서 receive
//         resive(data);
//     }
 
//     // 메세지 입력박스 내용 지우기
//     function clearTextarea() {
//         $('div.input-div textarea').val('');
//     }
 
//     // 메세지 수신
//     function resive(data) {
//         const LR = (data.senderName != myName)? "left" : "right";
//         appendMessageTag("right", data.senderName, data.message);
//     }
 
//     return {
//         'init': init
//     };
// })();
 
// $(function(){
//     Chat.init();
// });
</script>
<button onclick="connect();">접속</button>
<button onclick="disconnect();">종료</button>

<div class="chat_wrap">
    <div class="header">
        CHAT
    </div>
    <div class="chat">
        <ul>
            <!-- 동적 생성 -->
        </ul>
    </div>
    <div class="input-div">
        <textarea placeholder="Press Enter for send message." id="chat-input"></textarea><button onclick="send();">전송</button><br>
    </div>
    <div class="message-wrap"></div>
</div>