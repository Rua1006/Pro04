package com.hami.dto;

import lombok.Data;

@Data
public class BoardDTO {
	private int no;
	private String title;
	private String content;
	private String author;
	private String resdate;
	private int visited;
	
}
