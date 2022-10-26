package team3.dao;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import team3.vo.Member;

// team3.dao.MemberDao

@Repository
public interface MemberDao {


	
	public void memberJoin(Member ins);
	
	public Member getMemberList(String id, String pass);
	
	public Member getMemberDetail(String userid);
	//로그인
	public Member login(Member m);
}