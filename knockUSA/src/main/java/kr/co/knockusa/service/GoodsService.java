package kr.co.knockusa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.GoodsDao;
import kr.co.knockusa.vo.GoodsDetailVo;
import kr.co.knockusa.vo.GoodsVo;
import kr.co.knockusa.vo.PurchaseVo;

@Service
public class GoodsService {
	@Inject
	private GoodsDao dao;
	
	public void insertGoods() {}
	public GoodsVo selectPackage(int goods_no) {
		return dao.selectGoods(goods_no);
	}
	public List<GoodsVo> selectPackages(String where, String side) {
		GoodsVo vo = new GoodsVo();
		vo.setGoods_country(where);
		vo.setGoods_side(side);
		
		return dao.selectPackages(vo);
	}
	public void updateGoods() {}
	public void deleteGoods() {}
	// 동일상품 예약 금지
	public int selectAlready(PurchaseVo vo) {
		return dao.selectAlready(vo);
	}
	// 상품 상세
	public List<GoodsDetailVo> selectGoodsDetail(int detail_goods_no) {
		return dao.selectGoodsDetail(detail_goods_no);
	}
	// 상품 현재인원 업데이트
	public void updateGoodsPeople(PurchaseVo vo) {
		dao.updateGoodsPeople(vo);
	}
	public void updateGoodsPeopleDown(PurchaseVo vo) {
		dao.updateGoodsPeopleDown(vo);
	}
	
	// home 핫 아이템 
	public List<GoodsVo> selectGoodsBest(){
		return dao.selectGoodsBest();
	}
	// home 지역별 여행보기
	public List<GoodsVo> selectByRegion(String goods_region){
		return dao.selectByRegion(goods_region);
	};
	
	// API
	public List<GoodsVo> selectGoodsMonthly(GoodsVo vo){
		return dao.selectGoodsMonthly(vo);
	}
	public List<GoodsVo> selectGoodsMonthly(String goods_start){
		return dao.selectGoodsMonthly(goods_start);
	}
}
