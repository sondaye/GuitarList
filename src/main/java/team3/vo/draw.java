package team3.vo;

public class draw {
	private int dnum;
	private int event_id;
	private String user_id;
	/**
	 * 
	 */
	public draw() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param dnum
	 * @param event_id
	 * @param user_id
	 */
	public draw(int dnum, int event_id, String user_id) {
		super();
		this.dnum = dnum;
		this.event_id = event_id;
		this.user_id = user_id;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public int getEvent_id() {
		return event_id;
	}
	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	

}
