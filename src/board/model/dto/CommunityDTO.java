package board.model.dto;

import java.util.ArrayList;

public class CommunityDTO {
	private int num;
	private String title;
	private String contents;
	private String nickname;
	private int viewNum;
	private String date;
	private int comNum;
	private String bizType;
	private String bizSize;
	private String bizLocal;
	private ArrayList<CommentDTO> comments;
	
	public CommunityDTO() {
		super();
	}
	public CommunityDTO(int num, String title, String contents, String nickname, int viewNum, String date, int comNum, String bizType,
			String bizSize, String bizLocal, ArrayList<CommentDTO> comments) {
		this.num = num;
		this.title = title;
		this.contents = contents;
		this.nickname = nickname;
		this.viewNum = viewNum;
		this.date = date;
		this.comNum = comNum;
		this.bizType = bizType;
		this.bizSize = bizSize;
		this.bizLocal = bizLocal;
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
	public String getBizType() {
		return bizType;
	}
	public void setBizType(String bizType) {
		this.bizType = bizType;
	}
	public String getBizSize() {
		return bizSize;
	}
	public void setBizSize(String bizSize) {
		this.bizSize = bizSize;
	}
	public String getBizLocal() {
		return bizLocal;
	}
	public void setBizLocal(String bizLocal) {
		this.bizLocal = bizLocal;
	}
	public ArrayList<CommentDTO> getComments() {
		return comments;
	}
	public void setComments(ArrayList<CommentDTO> comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "boardFreeDTO [num=" + num + ", title=" + title + ", contents=" + contents + ", viewNum=" + viewNum
				+ ", date=" + date + ", comNum=" + comNum + ", bizType=" + bizType + ", bizSize=" + bizSize
				+ ", bizLocal=" + bizLocal + "]";
	}	
}
