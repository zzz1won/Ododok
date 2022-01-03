package com.odd.ododok.dto;

import lombok.Data;

@Data
public class PageDTO {

	private int page;
	private int minPage;
	private int maxPage;
	private int startPage;
	private int endPage;
}
