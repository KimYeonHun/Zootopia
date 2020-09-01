package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class GallaryDto {
	private int no;
	private String title;
	private String explain;
	private String fname;
	private long fsize;
	private String ftype;
	private String when;
}