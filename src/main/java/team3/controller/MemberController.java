package team3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team3.service.MemberService;
import team3.vo.Member;

@Controller
public class MemberController {
	@Autowired(required = false)
	private MemberService service;
	/*
	//  로그인 화면 
	// http://localhost:7080/5th_project/login.do
	@RequestMapping("login.do")
	public String Login() { 
		return "WEB-INF\\views\\login.jsp";
	}*/
	//  로그인 화면
	// http://localhost:7080/5th_project/login.do
	@RequestMapping("login.do")
	public String login(Member m, HttpServletRequest req, Model model) {
		/*
		Member member = service.login(m);
		if(member != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginMember", member);
			model.addAttribute("msg","["+member.getName()+"]님 반갑습니다.");
		}else {
			model.addAttribute("msg", "등록되지 않은 정보입니다.");
		}
		model.addAttribute("loc","/");
		*/
		
		return "WEB-INF\\views\\login.jsp";
	}
	
	// 로그인 처리
	@RequestMapping("loginCheck.do")
	public String loginCheck(Member m, HttpServletRequest req, Model model) {	
		Member member = service.login(m);
		if(member != null) {
			HttpSession session = req.getSession();
			session.setAttribute("loginMember", member);
			model.addAttribute("msg","["+member.getName()+"]님 반갑습니다.");
			model.addAttribute("proc", "Y");
		}else {
			model.addAttribute("msg", "등록되지 않은 정보입니다.");
			model.addAttribute("proc", "N");
		}
		model.addAttribute("loc","/");
		
		return "WEB-INF\\views\\login.jsp";
	}
	
	
	// 회원가입 화면
	// http://localhost:7080/5th_project/joinForm.do
	@RequestMapping("joinForm.do")
	public String joinForm() {
		return "WEB-INF\\views\\join.jsp";
	}
	//회원가입 처리
	@RequestMapping("joinMember.do")
	public String joinMember(Member ins, Model d){
		service.memberJoin(ins);
		d.addAttribute("isInsert","N");
		
		return "WEB-INF\\views\\login.jsp";
	}	
	// 정보 가져오기
 	@RequestMapping("memberDetail.do")
 	public <string> String memberDetail(@RequestParam("userid") String userid, Model d) {
 		d.addAttribute("member",service.getMemberDetail(userid));	
 		return "WEB-INF\\views\\a03_boardDetail.jsp" ;
 	}
 	
 // http://localhost:7080/5th_project/a01_main.do
 	@RequestMapping("a01_main.do")
	public String a01_main(Member m, HttpServletRequest req,Model d) {
 		HttpSession session = req.getSession();
 		d.addAttribute("member", session.getAttribute("loginMember"));
 		
		return "WEB-INF\\views\\a01_main.jsp";
	}
 	
 	
}

	
	

	

