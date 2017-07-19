package board.model.dto;

public class HotIssueDTO {
	private int num;
	private String country;
	private int rank;
	private String date;
	private String contents;
	private String url;
	
	public HotIssueDTO() {
		super();
	}

	public HotIssueDTO(int num, String country, int rank, String date, String contents, String url) {
		super();
		this.num = num;
		this.country = country;
		this.rank = rank;
		this.date = date;
		this.contents = contents;
		this.url = url;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}	
}
