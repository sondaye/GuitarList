package team3.dao;
// community.repository.PostRepository

import java.util.List;

import org.springframework.stereotype.Repository;

import team3.vo.Board;
import team3.vo.BoardPostMember;
import team3.vo.LikeVo;
import team3.vo.UserComment;


@Repository
public interface PostRepository {
	
	public List<BoardPostMember> getHot10Post(BoardPostMember sch);
	public List<BoardPostMember> getLatestPost(BoardPostMember sch);
	public BoardPostMember getPost(int id);
	public List<Board> getBoard();
	public List<BoardPostMember> getBoardHotPost(BoardPostMember sch);
	public List<BoardPostMember> getBoardPost(BoardPostMember sch);
	public void insPost(BoardPostMember ins);
	public void delPost(int postId);
	public void uptPost(BoardPostMember ins);
	public void uptViews(int id); 
	
	public int findLike(LikeVo sch);
	public void likeUp(LikeVo sch);
	public void likeDown(LikeVo sch);
	public void uptRec(int id);
	
	public List<UserComment> getComment(int id);
	public void insComment(UserComment ins);
	public void countCom(int id);
	public void delAllComment(int id);
}
