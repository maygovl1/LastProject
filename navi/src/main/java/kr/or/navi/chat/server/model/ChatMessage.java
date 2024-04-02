package kr.or.navi.chat.server.model;

import lombok.Data;

/**
 * @Class Name : ChatMessage.java
 * @Description : 대화정보를 담는 VO
 */
@Data
public class ChatMessage implements Message {

	/**
	 * 사용자명
	 */
	private String name;

	/**
	 * room Id
	 */
	private String room;

	/**
	 * 전달 메시지
	 */
	private String message;
}
