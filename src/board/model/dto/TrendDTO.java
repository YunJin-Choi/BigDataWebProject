package board.model.dto;

public class TrendDTO {
	private int num;
	private String source;
	private String title;
	private String contents;
	
	public TrendDTO() {
		super();
	}
	public TrendDTO(int num, String source, String title, String contents) {
		super();
		this.num = num;
		this.source = source;
		this.title = title;
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
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

	@Override
	public String toString() {
		return "trendDTO [num=" + num + ", source=" + source + ", title=" + title + ", contents=" + contents + "]";
	}	
}
