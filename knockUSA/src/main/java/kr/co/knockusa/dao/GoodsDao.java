package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.GoodsDetailVo;
import kr.co.knockusa.vo.GoodsVo;
import kr.co.knockusa.vo.PurchaseVo;

@Repository
public class GoodsDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertGoods() {}
	public GoodsVo selectGoods(int goods_no) {
		return mybatis.selectOne("mapper.sql_goods.SELECT_PACKAGE", goods_no);
	}
	public List<GoodsVo> selectPackages(GoodsVo vo) {
		return mybatis.selectList("mapper.sql_goods.SELECT_PACKAGES", vo);
	}
	public void updateGoods() {}
	public void deleteGoods() {}
	
	// 상품 상세
	public List<GoodsDetailVo> selectGoodsDetail(int detail_goods_no) {
		return mybatis.selectList("mapper.sql_goods.SELECT_GOODS_DETAIL", detail_goods_no);
	}
	// 상품 현재인원 업데이트
	public void updateGoodsPeople(PurchaseVo vo) {
		mybatis.update("mapper.sql_goods.UPDATE_GOODS_PEOPLE", vo);
	}
	public void updateGoodsPeopleDown(PurchaseVo vo) {
		mybatis.update("mapper.sql_goods.UPDATE_GOODS_PEOPLE_DOWN", vo);
	}
	
	// /home 핫 아이템 3
	public List<GoodsVo> selectGoodsBest(){
		return mybatis.selectList("mapper.sql_goods.SELECT_GOODS_BEST");
	}
	// home 지역별 여행보기
		public List<GoodsVo> selectByRegion(String goods_region){
			return mybatis.selectList("mapper.sql_goods.SELECT_BY_REGION", goods_region);
		}
	
	// API
	public List<GoodsVo> selectGoodsMonthly(GoodsVo vo){
		return mybatis.selectList("mapper.sql_goods.SELECT_GOODS_MONTHLY_REGION", vo);
	}
	public List<GoodsVo> selectGoodsMonthly(String goods_start){
		return mybatis.selectList("mapper.sql_goods.SELECT_GOODS_MONTHLY", goods_start);
	}
}
