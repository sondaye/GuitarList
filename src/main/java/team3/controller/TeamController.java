package team3.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import team3.service.TeamService;

@Controller
public class TeamController {
	@Autowired(required=false)
	private TeamService service;
	
//	// http://localhost:7080/5th_project/guitarList.do
//	@RequestMapping("guitarList.do")
//	public String MainPage() {
//		return "WEB-INF\\views\\main.jsp";
//	}
//	// http://localhost:7080/5th_project/eventList.do
//	@RequestMapping("eventList.do")
//	public String EventPage() {
//		return "WEB-INF\\views\\eventList.jsp";
//	}
}
