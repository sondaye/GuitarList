package team3.vo;
// community.vo.Post
import java.util.Date;

public class Post {
	private int id;
	private String userId;
	private int boardId;
	private String title;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	private int recommendation;
	private int views;
	private int reply_cnt;
	
	public Post() {
	}
	public Post(int id, String userId, int boardId, String title, String content, Date createdAt,
			Date updatedAt, int recommendation, int views, int reply_cnt) {
		super();
		this.id = id;
		this.userId = userId;
		this.boardId = boardId;
		this.title = title;
		this.content = content;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.recommendation = recommendation;
		this.views = views;
		this.reply_cnt = reply_cnt;
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
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
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
	
	
	
}
