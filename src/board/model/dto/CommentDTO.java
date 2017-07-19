package board.model.dto;

public class CommentDTO {
	private int num;
	private int writing_no;
	private String nickName;
	private String date;
	private String contents;
	
	public CommentDTO() {
		super();
	}

	public CommentDTO(int num, int writing_no,String nickName, String date, String contents) {
		super();
		this.num = num;
		this.writing_no = writing_no;
		this.nickName = nickName;
		this.date = date;
		this.contents = contents;
	}

	public int getWriting_no() {
		return writing_no;
	}

	public void setWriting_no(int writing_no) {
		this.writing_no = writing_no;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "CommentDTO [num=" + num + ", writing_no=" + writing_no + ", nickName=" + nickName + ", date=" + date
				+ ", contents=" + contents + "]";
	}
}
