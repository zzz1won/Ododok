package com.odd.ododok.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class WriteDTO {

	private long w_number;
	private String f_id;
	private String w_title;
	private String w_contents;
	private int w_hits;
	private String w_category;
	private Timestamp w_date;
	
	
	private MultipartFile w_file;
	private String w_filename;
}
