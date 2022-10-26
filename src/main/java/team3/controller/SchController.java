package team3.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import team3.service.SchService;
import team3.vo.SchGuitar;

@Controller
public class SchController {
	@Autowired(required=false)
	private SchService service;

	// http://localhost:7080/5th_project/schMain.do
	@RequestMapping("schMain.do")
	public String schMain() {
		
		return "WEB-INF\\views\\main2.jsp";
	}
	
	
	// http://localhost:7080/5th_project/schList.do
	@RequestMapping("schList.do")
	public String schList(SchGuitar sch, Model d) {
		d.addAttribute("sclist",service.schList(sch));
		
		return "WEB-INF\\views\\a02_schlist.jsp";
	}

	
	
	// http://localhost:7080/5th_project/compare.do?guitarid=1&guitarid1=2&guitarid2=3
	@RequestMapping("compare.do")
	public String compare(SchGuitar com, Model d) {

		d.addAttribute("comlist",service.compare(com));

		return "WEB-INF\\views\\guitarCom.jsp";
	}
	
}
