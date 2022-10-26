package team3.vo;
// team3.vo.Member
public class Member {
	private String userid;
	private String email;
	private String id;
	private String pass;
	private String name;
	private String nick;
	private String standard;
	private int point;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String userid, String email, String id, String pass, String name, String nick, String standard,
			int point) {
		super();
		this.userid = userid;
		this.email = email;
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.nick = nick;
		this.standard = standard;
		this.point = point;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}

}



