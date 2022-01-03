package com.odd.ododok.dto;

import lombok.Data;

@Data
public class ReviewDTO {

		private long r_number;
		private String f_id;
		private String r_contents;
		private long b_number;
		private String b_name;
		private int r_rating;
}
