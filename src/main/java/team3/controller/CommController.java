package team3.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team3.service.PostService;
import team3.vo.BoardPostMember;
import team3.vo.LikeVo;
import team3.vo.Post;
import team3.vo.UserComment;

@Controller
@RequestMapping("/")
public class CommController {
	@Autowired(required = false)
	private PostService service;
	// http://localhost:7080/5th_project/community.do
	@GetMapping("community.do")
	public String postList(BoardPostMember sch,HttpServletRequest req,Model d) {
		HttpSession session = req.getSession();
		d.addAttribute("member", session.getAttribute("loginMember"));
		System.out.println("멤버" + session.getAttribute("loginMember"));
		d.addAttribute("boardList" , service.getBoard());
		d.addAttribute("hotPostList", service.getHot10Post(sch));
		d.addAttribute("latestPostList", service.getLatestPost(sch));
		return "WEB-INF\\views\\community.jsp";
	}
	
	@GetMapping("board.do")
	public String boadPostList(BoardPostMember sch,HttpServletRequest req,Model d) {
		HttpSession session = req.getSession();
		d.addAttribute("member", session.getAttribute("loginMember"));
		System.out.println("멤버"+session.getAttribute("loginMember"));
		d.addAttribute("boardList" , service.getBoard());
		d.addAttribute("boardPostList", service.getBoardPost(sch));
		return "WEB-INF\\views\\boardCommunity.jsp";
	}
	
	//http://localhost:7080/5th_project/write.do
	@GetMapping("write.do")
	public String write(
			BoardPostMember sch,
			HttpServletRequest req,
			Model d) {
		HttpSession session = req.getSession();
		d.addAttribute("member", session.getAttribute("loginMember"));
		d.addAttribute("post", service.getPost(sch.getId()));
		return "WEB-INF\\views\\write.jsp";
	}
	
	@GetMapping("update.do")
	public String update(
			//UserInfo u,
			BoardPostMember sch,
			Model d) {
		d.addAttribute("post", service.getPost(sch.getId()));
		//d.addAttribute("userInfo",service.getUserInfo(u));
		return "WEB-INF\\views\\update.jsp";
	}
	
	@GetMapping("insertProc.do")
	public String insertProc(BoardPostMember ins) {
		service.insPost(ins);
		return "redirect:community.do";
	}
	
	//http://localhost:5050/community/post.do
	@GetMapping("post.do")
	public String post(
			@RequestParam(value = "id", defaultValue = "0") int id,
			UserComment uc,
			Model d) {
		service.uptViews(id);
		if(uc.getCom_content()!=null) {
			service.insComment(uc);
		}
		d.addAttribute("post", service.getPost(id));
		d.addAttribute("comment",service.getComment(id));
		return "WEB-INF\\views\\postDetail.jsp";
	}
	
	@GetMapping("updatePost.do")
	public String updatePost(BoardPostMember upt, Model d) {
		service.uptPost(upt);
		return "redirect:community.do";
	}
	
	@GetMapping("deletePost.do")
	public String deleteProc(
			@RequestParam(value = "id" , defaultValue = "0") int boradId
			) {
		service.delPost(boradId);
		return "redirect:community.do";
	}
	
	@GetMapping("searchPost.do")
	public String searchPost(BoardPostMember sch,Model d) {
		d.addAttribute("boardList" , service.getBoard());
		d.addAttribute("latestPostList", service.getLatestPost(sch));
		return "WEB-INF\\views\\searchPost.jsp";
	}
	
	// 좋아요 기능
	//http://localhost:5050/community/ajaxLike.do?id=2&postId=2&userId=1
	@RequestMapping("ajaxLike.do")
	public String ajaxLike(
			Post post,LikeVo ck, Model d) {
		if(service.findLike(ck) == 0) {
			service.likeUp(ck);
			ck.setLikeCheck(1);
		} else {
			service.likeDown(ck);
			ck.setLikeCheck(0);
		}
		service.uptRec(post.getId());
		d.addAttribute("post", service.getPost(post.getId()));
		return "pageJsonReport";
	}
	
	// 댓글
	@RequestMapping("insertComment.do")
	public String insertComment(UserComment uc, Model d) {
		return "WEB-INF\\views\\postDetail.jsp";
	}
	
}
