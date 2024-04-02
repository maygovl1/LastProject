package kr.or.navi.chat.server;

import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;

import javax.inject.Inject;
import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import kr.or.navi.alarm.service.SseEmitters;
import kr.or.navi.chat.server.config.ChatServerAppConfig;
import kr.or.navi.chat.server.model.ChatMessage;
import kr.or.navi.chat.server.model.Message;
import kr.or.navi.chat.server.model.UsersMessage;
import kr.or.navi.chat.server.model.decoder.MessageDecoder;
import kr.or.navi.chat.server.model.encoder.MessageEncoder;
import kr.or.navi.chat.web.service.ChatService;
import kr.or.navi.vo.ChatVO;
import kr.or.navi.vo.EmpVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@ServerEndpoint(value = "/chat/{room}", encoders = { MessageEncoder.class }, decoders = { MessageDecoder.class }, configurator = ChatServerAppConfig.class)
public class ChatServerEndPoint {
    private static final Logger LOGGER = LoggerFactory.getLogger(ChatServerEndPoint.class);
    private Set<Session> chatroomUsers = Collections.synchronizedSet(new HashSet<Session>());
    
    @Inject
    private ChatService chatService;
    
    @Inject
    SseEmitters sseEmitters;
    
    /**
     * Handshaking 함수
     *
     * @param userSession 사용자 session
     */
    @OnOpen
    public void handleOpen(Session userSession, @PathParam("room") final String room) throws IOException, EncodeException {
        userSession.getUserProperties().put("room", room);
        chatroomUsers.add(userSession);
        log.info("WebSocket 연결이 열렸습니다. 세션 ID: {}", userSession.getId());
        // 이전 대화를 불러오기
        List<ChatVO> previousMessages = chatService.getMessage(room);
        if (!previousMessages.isEmpty()) {
            for (ChatVO message : previousMessages) {
                userSession.getBasicRemote().sendObject(message);
            }
        }
    }
    
    /**
     * 메시지 전달 함수
     *
     * @param incomingMessage 들어오는 메시지
     * @param userSession     사용자 session
     * @param room            room Id
     * @throws IOException
     * @throws EncodeException
     */
    @OnMessage
    public void handleMessage(Message incomingMessage, Session userSession, @PathParam("room") final String room) throws IOException, EncodeException {
		ChatMessage incomingChatMessage = (ChatMessage) incomingMessage;
        String username = (String) userSession.getUserProperties().get("username");
        String roomId = (String) userSession.getUserProperties().get("room");
        
        String userId = userSession.getUserPrincipal().getName();
        if (username == null) {
            username = incomingChatMessage.getMessage();
            if (username != null) {
                userSession.getUserProperties().put("username", username);
            }

			synchronized (chatroomUsers) {
				for (Session session : chatroomUsers) {
					session.getBasicRemote().sendObject(new UsersMessage(getUsers()));
				}
            }
			
        } else {
        	// 채팅 메시지를 데이터베이스에 저장
            ChatVO chatVO = new ChatVO();
            chatVO.setRoomId(room);
            chatVO.setSenderId(userId);
            chatVO.setChatCn(incomingChatMessage.getMessage());
            int result = chatService.addMessage(chatVO);
            if (result > 0) {
                // 데이터베이스에 채팅 메시지가 성공적으로 저장된 경우, 채팅 메시지를 모든 사용자에게 전송
                ChatMessage outgoingChatMessage = new ChatMessage();
                outgoingChatMessage.setName(username);
                outgoingChatMessage.setMessage(incomingChatMessage.getMessage());
                
                for (Session session : chatroomUsers) {
                	if (room.equals(session.getUserProperties().get("room"))) {
                        session.getBasicRemote().sendObject(outgoingChatMessage);
                        sseEmitters.sendMessage(username, roomId);
                    }
                }
            } else {
                log.error("Failed to add chat message to the database.");
            }
        }
    }

    // 누군가가 접속 끊을때
    @OnClose
    public void handleClose(Session userSession, @PathParam("room") final String room) throws IOException, EncodeException {
        chatroomUsers.remove(userSession);

        for (Session session : chatroomUsers) {
            session.getBasicRemote().sendObject(new UsersMessage(getUsers()));
        }
        log.info("WebSocket 연결이 닫혔습니다. 세션 ID: {}", userSession.getId());
    }

    /**
     * 사용자가 접속 끊기 전 호출되는 함수
     *
     * @param session
     * @param throwable
     * @param room
     */
    @OnError
    public void handleError(Session session, Throwable throwable, @PathParam("room") final String room) {
        // Error handling
        LOGGER.info("ChatServerEndPoint (room: " + room + ") occured Exception!");
        LOGGER.info("Exception : " + throwable.getMessage());
    }

    /**
     * 사용자 정보를 가져오는 함수
     *
     * @return
     */
    private Set<String> getUsers() {
        HashSet<String> returnSet = new HashSet<String>();

        for (Session session : chatroomUsers) {
            if (session.getUserProperties().get("username") != null) {
                returnSet.add(session.getUserProperties().get("username").toString());
            }
        }
        return returnSet;
    }
    
}