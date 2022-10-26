package team3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team3.service.RecService;
import team3.vo.Guitar;

@Controller
public class RecController {
	@Autowired(required = false)
	private RecService service;
	
	// http://localhost:7080/5th_project/recommend.do
	@RequestMapping("recommend.do")
	public String recommend() {
		return "WEB-INF\\views\\recommend.jsp";
	}
	@RequestMapping("memRec.do")
	public String memRec(Model d) {
		d.addAttribute("glist", service.listAllGuitar());
		return "WEB-INF\\views\\gRecList.jsp";
	}
	@RequestMapping("revRec.do")
	public String revRec(Model d) {
		d.addAttribute("glist", service.listAllGuitar());
		return "WEB-INF\\views\\gRecList.jsp";
	}
	@RequestMapping("guitarDetail.do")
	public String guitarDetail(@RequestParam("gid") String gid, Model d) {
		d.addAttribute("guitarid", gid);
		d.addAttribute("guitar", service.getGuitar(gid));
		return "WEB-INF\\views\\guitarDetail.jsp";
	}
	@RequestMapping("guitarReview.do")
	public String guitarReview(@RequestParam("guitarid") String guitarid, Model d) {
		d.addAttribute("reviewList", service.getGuitarReview(guitarid));
		return "WEB-INF\\views\\review3.jsp";
	}
}
