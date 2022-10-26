package team3.dao;

import org.springframework.stereotype.Repository;
import team3.vo.Member;

// team3.dao.MemberDao

@Repository
public interface MemberDao2 {
	
	public void memberJoin(Member ins);
	
	
	
	public Member getMemberDetail(String userid);

	public Member getMemberList(String id, String pass);

}