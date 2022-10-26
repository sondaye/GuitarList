package team3.vo;

public class Review1 {
	private String userid;
	private int receiptid;
	private String guitarid;
	private double stars;
	private String usercomment;
	public Review1() {
	}
	public Review1(String userid, int receiptid, String guitarid, double stars, String usercomment) {
		this.userid = userid;
		this.receiptid = receiptid;
		this.guitarid = guitarid;
		this.stars = stars;
		this.usercomment = usercomment;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getReceiptid() {
		return receiptid;
	}
	public void setReceiptid(int receiptid) {
		this.receiptid = receiptid;
	}
	public String getGuitarid() {
		return guitarid;
	}
	public void setGuitarid(String guitarid) {
		this.guitarid = guitarid;
	}
	public double getStars() {
		return stars;
	}
	public void setStars(double stars) {
		this.stars = stars;
	}
	public String getUsercomment() {
		return usercomment;
	}
	public void setUsercomment(String usercomment) {
		this.usercomment = usercomment;
	}
}
