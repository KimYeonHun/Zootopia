package com.kh.zootopia.websocket;


	import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.web.socket.CloseStatus;
	import org.springframework.web.socket.TextMessage;
	import org.springframework.web.socket.WebSocketHandler;
	import org.springframework.web.socket.WebSocketSession;
	import org.springframework.web.socket.handler.TextWebSocketHandler;
	import lombok.extern.slf4j.Slf4j;
	/**
	 *	웹소켓의 기본적인 이해를 돕기 위해 만든 서버
	 *	- WebSocketServer를 만들기 위해서는 특정 클래스/인터페이스 상속이 필요 
	 */
	@Slf4j
	//public class WebSocketBasicServer implements WebSocketHandler{
	public class WebsocketChatServer  extends TextWebSocketHandler{
		//사용자가 연결되있는걸 알려고
		private Set<WebSocketSession> users = new CopyOnWriteArraySet<>();//사용자 정보 저장을 위한 저장소 설정
		
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			users.add(session);
			log.info("접속 : {}", session);
			log.info("접속");
			log.info("session : {}", session);
			log.info("사용자 접속! 현재 {} 명", users.size());
		}

		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
			log.info("수신");
			log.info("session : {}", session);
			log.info("message : {}", message);
			//사용자가 사용자 수만큰 메시지 보냄
			//사용자 수만큼 반복
			//메시지_형태_누가보내는지
			//websocket이 사용자
			TextMessage newMessage = new TextMessage(message.getPayload());
			for(WebSocketSession ws : users) {
				//ws 메세지를 보낸다
				ws.sendMessage(newMessage);
			}
		}
		
		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			users.remove(session);
			log.info("종료");
			log.info("session : {}", session);
			log.info("status : {}", status);
			log.info("사용자 종료! 현재 {} 명", users.size());
		}
		
	}

