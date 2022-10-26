package team3.vo;

public class LikeVo {
	private int postLikeId;
	private int postId;
	private String userId;
	private int likeCheck;
	public LikeVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LikeVo(int postLikeId, int postId, String userId, int likeCheck) {
		super();
		this.postLikeId = postLikeId;
		this.postId = postId;
		this.userId = userId;
		this.likeCheck = likeCheck;
	}
	public int getPostLikeId() {
		return postLikeId;
	}
	public void setPostLikeId(int postLikeId) {
		this.postLikeId = postLikeId;
	}
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getLikeCheck() {
		return likeCheck;
	}
	public void setLikeCheck(int likeCheck) {
		this.likeCheck = likeCheck;
	}
	
	
}
