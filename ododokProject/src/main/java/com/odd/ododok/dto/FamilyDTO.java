package com.odd.ododok.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class FamilyDTO {

	
	private long f_number;
	private String f_id;
	private String f_pw;
	private String f_name;
	private String f_address;
	private String f_phone;
	
	private MultipartFile f_file;
	private String f_filename;
	
	private int f_point;
	
	
}
