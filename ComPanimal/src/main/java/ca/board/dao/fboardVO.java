package ca.board.dao;

public class fboardVO {
	private int f_seq;
	private String f_title;
	private String f_content;
	private String f_date;
	private String user_id;
	private String user_name;
	
	public fboardVO(int f_seq, String f_title, String f_content, String f_date, String user_id, String user_name,
			String f_file, int f_cnt) {
		super();
		this.f_seq = f_seq;
		this.f_title = f_title;
		this.f_content = f_content;
		this.f_date = f_date;
		this.user_id = user_id;
		this.user_name = user_name;
		this.f_file = f_file;
		this.f_cnt = f_cnt;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public fboardVO(int f_seq, String f_title, String f_content, String f_date, String user_id, String f_file,
			int f_cnt) {
		super();
		this.f_seq = f_seq;
		this.f_title = f_title;
		this.f_content = f_content;
		this.f_date = f_date;
		this.user_id = user_id;
		this.f_cnt = f_cnt;
		this.f_file = f_file;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	private String f_file;
	private int f_cnt;
	
	public fboardVO() {}

	public int getF_seq() {
		return f_seq;
	}

	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}

	public String getF_title() {
		return f_title;
	}

	public void setF_title(String f_title) {
		this.f_title = f_title;
	}

	public String getF_content() {
		return f_content;
	}

	public void setF_content(String f_content) {
		this.f_content = f_content;
	}

	public String getF_date() {
		return f_date;
	}

	public void setF_date(String f_date) {
		this.f_date = f_date;
	}

	public String getF_file() {
		return f_file;
	}

	public void setF_file(String f_file) {
		this.f_file = f_file;
	}

	public int getF_cnt() {
		return f_cnt;
	}

	public void setF_cnt(int f_cnt) {
		this.f_cnt = f_cnt;
	}

	@Override
	public String toString() {
		return "fboardVO [f_seq=" + f_seq + ", f_title=" + f_title + ", f_content=" + f_content + ", f_date=" + f_date
				+ ", user_id=" + user_id + ", user_name=" + user_name + ", f_file=" + f_file + ", f_cnt=" + f_cnt + "]";
	};
	
}
