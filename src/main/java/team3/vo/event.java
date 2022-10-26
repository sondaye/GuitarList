package team3.vo;

import java.util.Date;

public class event {
	private int evid;
	private String evname;
	private String contents;
	private int pNum;
	private Date span1;
	private Date span2;
	private Date span3; // 당첨자 발표일
	private String prize;
	private String image;

	public event() {
		super();
	}

	public event(int evid, String evname, String contents, int pNum, Date span1, Date span2, Date span3, String prize,
			String image) {
		super();
		this.evid = evid;
		this.evname = evname;
		this.contents = contents;
		this.pNum = pNum;
		this.span1 = span1;
		this.span2 = span2;
		this.span3 = span3;
		this.prize = prize;
		this.image = image;
	}

	public int getEvid() {
		return evid;
	}

	public void setEvid(int evid) {
		this.evid = evid;
	}

	public String getEvname() {
		return evname;
	}

	public void setEvname(String evname) {
		this.evname = evname;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public Date getSpan1() {
		return span1;
	}

	public void setSpan1(Date span1) {
		this.span1 = span1;
	}

	public Date getSpan2() {
		return span2;
	}

	public void setSpan2(Date span2) {
		this.span2 = span2;
	}

	public Date getSpan3() {
		return span3;
	}

	public void setSpan3(Date span3) {
		this.span3 = span3;
	}

	public String getPrize() {
		return prize;
	}

	public void setPrize(String prize) {
		this.prize = prize;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

	
	
	

}
