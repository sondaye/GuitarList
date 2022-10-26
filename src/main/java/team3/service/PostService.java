package team3.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team3.dao.PostRepository;
import team3.vo.Board;
import team3.vo.BoardPostMember;
import team3.vo.LikeVo;
import team3.vo.UserComment;


@Service
public class PostService {
	@Autowired(required = false)
	private PostRepository dao;
	
	public List<BoardPostMember> getHot10Post(BoardPostMember sch) {
		return dao.getHot10Post(sch);
	}
	
	public List<BoardPostMember> getLatestPost(BoardPostMember sch) {
		return dao.getLatestPost(sch);
	}
	
	public List<Board> getBoard() {
		return dao.getBoard();
	}
	
	public List<BoardPostMember> getBoardHotPost(BoardPostMember sch) {
		return dao.getBoardHotPost(sch);
	}
	
	public List<BoardPostMember> getBoardPost(BoardPostMember sch) {
		return dao.getBoardPost(sch);
	}
	
	public void insPost(BoardPostMember ins) {
		dao.insPost(ins);
	}
	
	public BoardPostMember getPost(int id) {
		return dao.getPost(id);
	}
	
	public void delPost(int postId) {
		dao.delAllComment(postId);
		dao.delPost(postId);
	}
	public void uptPost(BoardPostMember upt) {
		dao.uptPost(upt);
	}
	

	//
	public void uptViews(int id) {
		dao.uptViews(id);
	}
	
	public int findLike(LikeVo sch) {
		return dao.findLike(sch);
	}
	
	public void likeUp(LikeVo sch) {
		dao.likeUp(sch);
	}
	
	public void likeDown(LikeVo sch) {
		dao.likeDown(sch);
	}
	
	public void uptRec(int id) {
		dao.uptRec(id);
	}
	
	public List<UserComment> getComment(int id) {
		return dao.getComment(id);
	};
	
	public void insComment(UserComment ins) {
		dao.insComment(ins);
		dao.countCom(ins.getId());
	}
	
	
	
}
