package team3.vo;

import java.util.Date;

public class BoardPostMember {
	/*
	p.id id, 
	title, 
	content, 
	createdAt, 
	updatedAt, 
	recommendation, 
	views,
	reply_cnt,
	p.userid , 
	m.email, 
	m.id memberId,
	m.pass, 
	m.name, 
	m.nick, 
	m.standard, 
	m.point,
	p.boardId, 
	b.boardName
	 * */
	private int id;
	private String title;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	private int recommendation;
	private int views;
	private int reply_cnt;
	private String userId;
	private String email;
	private String memberId;
	private String pass;
	private String name;
	private String nick;
	private String standard;
	private int point;
	private int boardId;
	private String boardName;
	
	public BoardPostMember() {
	}

	public BoardPostMember(int id, String title, String content, Date createdAt, Date updatedAt, int recommendation,
			int views, int reply_cnt, String userId, String email, String memberId, String pass, String name,
			String nick, String standard, int point, int boardId, String boardName) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.recommendation = recommendation;
		this.views = views;
		this.reply_cnt = reply_cnt;
		this.userId = userId;
		this.email = email;
		this.memberId = memberId;
		this.pass = pass;
		this.name = name;
		this.nick = nick;
		this.standard = standard;
		this.point = point;
		this.boardId = boardId;
		this.boardName = boardName;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getRecommendation() {
		return recommendation;
	}

	public void setRecommendation(int recommendation) {
		this.recommendation = recommendation;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getReply_cnt() {
		return reply_cnt;
	}

	public void setReply_cnt(int reply_cnt) {
		this.reply_cnt = reply_cnt;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}
	
}
