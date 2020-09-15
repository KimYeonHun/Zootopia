package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class ChatDto {
	private String room_no;
	private String chat_contents;
	private String chat_time;
}
