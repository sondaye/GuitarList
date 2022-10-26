package team3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team3.service.EventService;
import team3.vo.draw;
import team3.vo.event;
import team3.vo.review;

@Controller
public class EventController {
	@Autowired(required=false)
	private EventService service;
	// http://localhost:7080/5th_project/main.do
	@RequestMapping("main.do")
	public String main(){
		return "WEB-INF\\views\\main2.jsp";
	}
	
	// 이벤트 리스트 출력
	// http://localhost:7080/5th_project/eventList.do
	@RequestMapping("eventList.do")
	public String eventList(event sch, Model d) {
		d.addAttribute("eventList", service.getEventList(sch));
		return "WEB-INF\\views\\eventList.jsp";
	}
	
	@RequestMapping("eventDetail.do")
	public String getEventDetail(@RequestParam("evname") String evname, Model d) {
		d.addAttribute("event",service.getEventDetail(evname));
		return "WEB-INF\\views\\eventDetail.jsp";
	}
	// http://localhost:7080/5th_project/draw.do
	@RequestMapping("draw.do")
	public String applyDraw(draw ins, Model d) {
		service.applyDraw(ins);
		d.addAttribute("isApply","Y");
		return "WEB-INF\\views\\draw2.jsp";
	}
	// http://localhost:7080/5th_project/drawForm.do
	@RequestMapping("drawForm.do")
	public String drawForm(){
		return "WEB-INF\\views\\draw2.jsp";
	}
	
	
	
	
	
	
	// 리뷰 리스트
	// http://localhost:7080/5th/reviewList.do
	@RequestMapping("reviewList.do")
	public String reviewList(review sch, Model d) {
		d.addAttribute("reviewList", service.getReviewList(sch));
		return "WEB-INF\\views\\reviewList.jsp";
	}
	// 리뷰 등록
	// http://localhost:7080/5th_project/reviewInsertForm.do
	@RequestMapping("reviewInsertForm.do")
	public String reviewInsertForm(){
		return "WEB-INF\\views\\reviewInsert4.jsp";
	}	
	@RequestMapping("reviewInsert.do")
	public String reviewInsert(review ins, Model d){
		service.insertReview(ins);
		d.addAttribute("isInsert","Y");
		
		return "WEB-INF\\views\\reviewInsert4.jsp";
	}	
	
	// 영수증 유효성 검증
	@RequestMapping("ajaxReceipt.do")
	public String ajaxReceipt(@RequestParam(value="rctid", defaultValue="")String rctid, Model d) {
		System.out.println("#rctid"+rctid);
		if(service.getCheck(rctid)!=null) {
			d.addAttribute("check","Y");
		}else {
			d.addAttribute("check","N");
		}
		System.out.println(d);
		return "pageJsonReport";
	}

	
	// 상품명으로 상품명, 별점, 리뷰내용 가져오기
	// http://localhost:7080/5th/reviewList3.do
	@RequestMapping("reviewList3.do")
	public String getReviewList3(@RequestParam(value="product",defaultValue="") String product, Model d) {
		d.addAttribute("productReview", service.getReviewList3(product));
		return "WEB-INF\\views\\review3.jsp";
	}
}
