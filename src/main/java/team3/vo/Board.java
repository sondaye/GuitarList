package team3.vo;

public class Board {
	private int id;
	private String boardName;
	
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Board(int id, String boardName) {
		super();
		this.id = id;
		this.boardName = boardName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	@Override
	public String toString() {
		return "Board [id=" + id + ", boardName=" + boardName + "]";
	}
	
	
}
