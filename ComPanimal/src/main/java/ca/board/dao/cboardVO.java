package ca.board.dao;

public class cboardVO {
	private int c_seq;
	private String c_title;
	private String c_content;
	private String c_date;
	private String c_file;
	private int c_cnt;
	
	public cboardVO() {};
	public cboardVO(int c_seq, String c_title, String c_content, String c_date, String c_file, int c_cnt) {
		super();
		this.c_seq = c_seq;
		this.c_title = c_title;
		this.c_content = c_content;
		this.c_date = c_date;
		this.c_file = c_file;
		this.c_cnt = c_cnt;
	}
	public int getC_seq() {
		return c_seq;
	}
	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	public String getC_file() {
		return c_file;
	}
	public void setC_file(String c_file) {
		this.c_file = c_file;
	}
	public int getC_cnt() {
		return c_cnt;
	}
	public void setC_cnt(int c_cnt) {
		this.c_cnt = c_cnt;
	}
	@Override
	public String toString() {
		return "cboardVO [c_seq=" + c_seq + ", c_title=" + c_title + ", c_content=" + c_content + ", c_date=" + c_date
				+ ", c_file=" + c_file + ", c_cnt=" + c_cnt + "]";
	}
}
