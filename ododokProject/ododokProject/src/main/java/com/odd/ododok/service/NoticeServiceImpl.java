package com.odd.ododok.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.odd.ododok.dto.NoticeDTO;
import com.odd.ododok.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeRepository nr;
	
	//1229-01
	 @Override 
	 public List<NoticeDTO> ntcAll() {
	 System.out.println("NoticeService.ntcAll"); 
	 return nr.ntcAll(); }
	 
	 

	//1229-03
	@Override
	public void ntcView(NoticeDTO notice) throws IllegalStateException, IOException {
		MultipartFile w_file = notice.getW_file();
		String w_filename= w_file.getOriginalFilename();
		w_filename = System.currentTimeMillis()+"-"+ w_filename;
		String savePath = "C:\\Users\\exo_g\\Documents\\spring_sts\\ododokProject\\src\\main\\webapp\\resources\\upload\\"+w_filename;
		if (!w_file.isEmpty())	{
			w_file.transferTo(new File(savePath));
			}
		notice.setW_filename(w_filename);
		
		System.out.println("noticeService.ntcView");
		nr.ntcView(notice);
		
	}



	@Override
	public NoticeDTO writeView(long w_number) {
		System.out.println("NoticeService.writeView");
		NoticeDTO notice = nr.writeView(w_number);
		return notice;
	}



	@Override
	public NoticeDTO hits(long w_number) {
		NoticeDTO notice = nr.hits(w_number);
		return notice;
		
		
	}

}
