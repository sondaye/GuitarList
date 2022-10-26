package team3.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import team3.vo.RR;
import team3.vo.draw;
import team3.vo.event;
import team3.vo.receipt;
import team3.vo.review;
import team3.vo.reviewFile;
@Repository
public interface EventDao {
	
	public List<event> getEventList(event sch);
	public event getEventDetail(String name);
	public void applyDraw(draw ins);
	
	public List<review> getReviewList(review sch);	
	
	public void insertReview(review ins);
	public void insertFile(reviewFile file);
	
	public review getReviewList2(String rid);
	public void updateReview(review upt);		
	public void deleteReview(String rid);	
	public List<RR> getReviewList3(String product);
	public receipt getCheck(String rctid);
	

}
