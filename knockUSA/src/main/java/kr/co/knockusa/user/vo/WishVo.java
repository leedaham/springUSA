package kr.co.knockusa.user.vo;

public class WishVo {
	private int wish_no;
	private String wish_id;
	private int wish_goods_no;
	
	//추가 필드
	private String goods_title;
	private int goods_price;
	
	
	public String getGoods_title() {
		return goods_title;
	}
	public void setGoods_title(String goods_title) {
		this.goods_title = goods_title;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public int getWish_no() {
		return wish_no;
	}
	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}
	public String getWish_id() {
		return wish_id;
	}
	public void setWish_id(String wish_id) {
		this.wish_id = wish_id;
	}
	public int getWish_goods_no() {
		return wish_goods_no;
	}
	public void setWish_goods_no(int wish_goods_no) {
		this.wish_goods_no = wish_goods_no;
	}
}
