package team3.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import team3.dao.EventDao;
import team3.vo.RR;
import team3.vo.draw;
import team3.vo.event;
import team3.vo.receipt;
import team3.vo.review;
import team3.vo.reviewFile;

@Service
public class EventService {
	@Autowired(required=false)
	private EventDao dao;
	public List<event> getEventList(event sch) {
		return dao.getEventList(sch);
	}
	public event getEventDetail(String name){
		return dao.getEventDetail(name);
	}
	public void applyDraw(draw ins) {
		dao.applyDraw(ins);
	}


	
	
	
	
	public List<review> getReviewList(review sch){
		return dao.getReviewList(sch);
	}
	
	@Value("${upload}")
	private String path;	
	public void insertReview(review ins) {
		MultipartFile mpf = ins.getReport();
		String fname = mpf.getOriginalFilename();
		
		File f = new File(path+fname);
		try {
			mpf.transferTo(f);
			System.out.println("리뷰파일업로드 완료");
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.insertReview(ins);
		dao.insertFile(new reviewFile(path,fname));
	}
	
	
	
	public review getReviewList(String rid){
		return dao.getReviewList2(rid);
	}	
	public review updateReview(review upt) {
		dao.updateReview(upt); // 수정과 함께 수정된 상세 데이터
		return dao.getReviewList2(upt.getRid());
	}	
	
	public void deleteReview(String rid) {
		dao.deleteReview(rid);
	}
	
	public List<RR> getReviewList3(String product){
		return dao.getReviewList3(product);
	}
	
	public receipt getCheck(String rctid) {
		return dao.getCheck(rctid);
	}
	

}
