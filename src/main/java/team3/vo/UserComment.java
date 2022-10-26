package team3.vo;
// community.vo.UserComment
import java.util.Date;

public class UserComment {
	
	private int id;
	private int regno;
	private String com_content;
	private Date createdAt;
	private Date updatedAt;
	private int recommendation;
	private int hates;
	private String userId;
	private String memberId;
	private String nick;
	private String standard;
	private String point;
	private int postId;
	
	public UserComment() {
	}

	public UserComment(int id, int regno, String com_content, Date createdAt, Date updatedAt, int recommendation,
			int hates, String userId, String memberId, String nick, String standard, String point, int postId) {
		super();
		this.id = id;
		this.regno = regno;
		this.com_content = com_content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.recommendation = recommendation;
		this.hates = hates;
		this.userId = userId;
		this.memberId = memberId;
		this.nick = nick;
		this.standard = standard;
		this.point = point;
		this.postId = postId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getRegno() {
		return regno;
	}

	public void setRegno(int regno) {
		this.regno = regno;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
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

	public int getHates() {
		return hates;
	}

	public void setHates(int hates) {
		this.hates = hates;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
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

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}
	
	
	
	
}
