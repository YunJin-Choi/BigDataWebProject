package board.model.dto;

import java.util.ArrayList;

public class QnABoardDTO {
	private int num;
	private String title;
	private String contents;
	private String nickname;
	private int viewNum;
	private String date;
	private int comNum;
	private int point;
	private ArrayList<CommentDTO> comments;
	
	public QnABoardDTO() {
		super();
	}

	public QnABoardDTO(int num, String title, String contents, String nickname, int viewNum,
			String date, int comNum, int point, ArrayList<CommentDTO> comments) {
		this.num = num;
		this.title = title;
		this.contents = contents;
		this.nickname = nickname;
		this.viewNum = viewNum;
		this.date = date;
		this.comNum = comNum;
		this.point = point;
		this.comments = comments;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getViewNum() {
		return viewNum;
	}
	public void setViewNum(int viewNum) {
		this.viewNum = viewNum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getComNum() {
		return comNum;
	}
	public void setComNum(int comNum) {
		this.comNum = comNum;
	}	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public ArrayList<CommentDTO> getComments() {
		return comments;
	}
	public void setComments(ArrayList<CommentDTO> comments) {
		this.comments = comments;
	}
}
