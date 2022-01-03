package com.odd.ododok.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.dto.PageDTO;
import com.odd.ododok.dto.WriteDTO;
import com.odd.ododok.repository.WriteRepository;

@Service
public class WriteServiceImpl implements WriteService {

	@Autowired
	private WriteRepository wr;
	
	@Override
	public List<WriteDTO> writeAll() {
		System.out.println("WriteService.writeAll 실행");
		return wr.writeAll();
	}

	@Override
	public void essay(WriteDTO write)  throws IllegalStateException, IOException {
		MultipartFile w_file = write.getW_file();
		String w_filename= w_file.getOriginalFilename();
		w_filename = System.currentTimeMillis()+"-"+ w_filename;
		String savePath = "C:\\Users\\exo_g\\Documents\\spring_sts\\ododokProject\\src\\main\\webapp\\resources\\upload\\"+w_filename;
		if (!w_file.isEmpty())	{
			w_file.transferTo(new File(savePath));
			}
		write.setW_filename(w_filename);
		
		System.out.println("writeController.essay");
		wr.essay(write);
	}

	
	
	// 1220-06-페이징 처리 관련
	
	private static final int PAGE_LIMIT = 10;
	private static final int BLOCK_LIMIT = 10;
	
	public List<WriteDTO> pagingList(int page) {
		int pagingStart = (page-1) * PAGE_LIMIT;
		Map<String, Integer> pagingParam = new HashMap<String, Integer>();
		pagingParam.put("start", pagingStart);
		pagingParam.put("limit", PAGE_LIMIT);
		/* List<WriteDTO> pagingList = wr.pagingList(pagingStart); */
		List<WriteDTO> pagingList = wr.pagingList1(pagingParam);
		for(WriteDTO b: pagingList) {
			System.out.println(b.toString());
		}
		return pagingList;
	}
	
	public PageDTO paging(int page) {
		int boardCount = wr.boardCount();
		int maxPage = (int)(Math.ceil((double)boardCount / PAGE_LIMIT));
		int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
		int endPage = startPage + BLOCK_LIMIT - 1;
		if(endPage > maxPage)
			endPage = maxPage; 
		PageDTO paging = new PageDTO();
		paging.setPage(page);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setMaxPage(maxPage);
		
		System.out.println("paging.toString(): "+ paging.toString());
		
		return paging;
	}
	/*
	 * @Override public PageDTO paging(int page) { int boardCount = wr.boardCount();
	 * int maxPage = (int)(Math.ceil((double) boardCount / PAGE_LIMIT)); int
	 * startPage = (((int)(Math.ceil((double) page / BLOCK_LIMIT))) -1) *
	 * BLOCK_LIMIT +1; int endPage = startPage + BLOCK_LIMIT -1;
	 * 
	 * if(endPage > maxPage) endPage = maxPage;
	 * 
	 * PageDTO paging = new PageDTO(); paging.setPage(page);
	 * paging.setStartPage(startPage); paging.setEndPage(endPage);
	 * paging.setMaxPage(maxPage);
	 * 
	 * System.out.println( "paging.toString(): "+paging.toString()); return paging;
	 * }
	 * 
	 * @Override public List<WriteDTO> pagingList(int page) { int pagingStart =
	 * (page-1) * PAGE_LIMIT; Map <String, Integer> pagingParam = new HashMap
	 * <String, Integer>(); pagingParam.put("start", pagingStart);
	 * pagingParam.put("limit", PAGE_LIMIT); List<WriteDTO> pagingList =
	 * wr.pagingList1(pagingParam);
	 * 
	 * for(WriteDTO w: pagingList) { System.out.println(w.toString()); } return
	 * pagingList; }
	 */

	@Override
	public WriteDTO hits(long w_number) {
		System.out.println("WriteService.hits");
		WriteDTO write = wr.hits(w_number);
		return write;
	}

	@Override
	public WriteDTO writeView(long w_number) {
		System.out.println("WriteService.writeView");
		WriteDTO write = wr.writeView(w_number);
		return write;
	}

	@Override
	public void delete(long w_number) {
		System.out.println("WriteSerivce.delete");
		wr.delete(w_number);

	}

	@Override
	public WriteDTO updateForm(long w_number) {
		System.out.println("WriteService.updateForm");
		WriteDTO write = wr.updateForm(w_number);
		return write;
	}

	@Override
	public void update(WriteDTO write) {
		System.out.println("WriteService.update");
		wr.update(write);
	}

	@Override
	public List<WriteDTO> search(String searchtype, String keyword) {
		Map<String, String> searchParam = new HashMap<String, String>();
		searchParam.put("type", searchtype);
		searchParam.put("word", keyword);
		List<WriteDTO> writeList = wr.search(searchParam);
		System.out.println("BookService.search");
		return writeList;
	}

	/*
	 * @Override public List<NoticeDTO> ntcAll() {
	 * System.out.println("WriteService.ntcAll 실행"); return wr.ntcAll(); }
	 */
	






}
