package team3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team3.dao.MemberDao;
import team3.vo.Member;

@Service
public class MemberService {
	@Autowired(required=false)	
	private MemberDao dao;
	
	public void memberJoin(Member ins) {
		dao.memberJoin(ins);
	}
	
	
	public Member getMemberDetail(String userid) {
		return dao.getMemberDetail(userid);
	}

	// 로그인
	public Member login(Member m) {
		return dao.login(m);
	}
}		
	


	
	





// 회원가입
// public void memberJoin(Member vo) throws Exception;
// 로그인
// public int Login(Member vo) throws Exception;