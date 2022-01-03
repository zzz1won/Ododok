package com.odd.ododok.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EventDTO {

		private long l_number;
		private long e_number;
		private String e_name;
		private String e_contents;
		private Date e_date;
		private int e_hits;
		private int e_pp;
		private int e_maxpp;
		private long f_number;
}
