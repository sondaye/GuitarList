package team3.vo;

public class reviewFile {
	private int no;
	private String path;
	private String fname;
	public reviewFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public reviewFile(String path, String fname) {
		super();
		this.path = path;
		this.fname = fname;
	}
	public reviewFile(int no, String path, String fname) {
		super();
		this.no = no;
		this.path = path;
		this.fname = fname;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
}
