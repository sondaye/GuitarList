package team3.vo;

public class WritePost {
	
	private int userno;
	private int boardId;
	private String title;
	private String content;
	public WritePost() {
	}
	public WritePost(int userno, int boardId, String title, String content) {
		super();
		this.userno = userno;
		this.boardId = boardId;
		this.title = title;
		this.content = content;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
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
	
	
}
