package kr.co.knockusa.vo;

public class ArticleVo {
	private int article_no;
	private int article_parent;
	private int article_comment;
	private String article_cate;
	private String article_title;
	private String article_content;
	private String article_img;
	private int article_hit;
	private String article_id;
	private String article_regip;
	private String article_rdate;
	private String article_modify_regip;
	private String article_modify_rdate;
//	// 추가 필드
	private String user_name;
	
//	private int board_grade;

	
	
	public String getUser_name() {
		return user_name;
	}

	public String getArticle_modify_regip() {
		return article_modify_regip;
	}

	public void setArticle_modify_regip(String article_modify_regip) {
		this.article_modify_regip = article_modify_regip;
	}

	public String getArticle_modify_rdate() {
		return article_modify_rdate;
	}

	public void setArticle_modify_rdate(String article_modify_rdate) {
		this.article_modify_rdate = article_modify_rdate;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public int getArticle_no() {
		return article_no;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}

	public int getArticle_parent() {
		return article_parent;
	}

	public void setArticle_parent(int article_parent) {
		this.article_parent = article_parent;
	}

	public int getArticle_comment() {
		return article_comment;
	}

	public void setArticle_comment(int article_comment) {
		this.article_comment = article_comment;
	}

	public String getArticle_cate() {
		return article_cate;
	}

	public void setArticle_cate(String article_cate) {
		this.article_cate = article_cate;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_img() {
		return article_img;
	}

	public void setArticle_img(String article_img) {
		this.article_img = article_img;
	}

	public int getArticle_hit() {
		return article_hit;
	}

	public void setArticle_hit(int article_hit) {
		this.article_hit = article_hit;
	}

	public String getArticle_id() {
		return article_id;
	}

	public void setArticle_id(String article_id) {
		this.article_id = article_id;
	}

	public String getArticle_regip() {
		return article_regip;
	}

	public void setArticle_regip(String article_regip) {
		this.article_regip = article_regip;
	}

	public String getArticle_rdate() {
		return article_rdate;
	}

	public void setArticle_rdate(String article_rdate) {
		this.article_rdate = article_rdate;
	}
	
	
}
