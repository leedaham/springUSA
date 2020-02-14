package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.PurchaseVo;

@Repository
public class PurchaseDao {
	
	@Inject
	private SqlSessionTemplate mybatis;

	// 구매내역, 구매정보	
	public void insertPurchase(PurchaseVo vo) {
		mybatis.insert("mapper.sql_goods.INSERT_PURCHASE", vo);
	}
		// 비회원 상품 조회하기
	public PurchaseVo selectPurchaseNonUser(PurchaseVo vo) {
		return mybatis.selectOne("mapper.sql_goods.SELECT_PURCHASE_NONUSER", vo);
	}
		// 회원 상품 목록 조회하기
	public List<PurchaseVo> selectPurchasesUser(String purchase_id) {
		return mybatis.selectList("mapper.sql_goods.SELECT_PURCHASE_LIST_USER", purchase_id);
	}
		// 회원 상품 조회하기
	public PurchaseVo selectPurchaseUser(String purcahse_no) {
		return mybatis.selectOne("mapper.sql_goods.SELECT_PURCHASE_USER", purcahse_no);
	}
	public void update() {}
	
	// 구매 취소하기
	public void deletePurchase(PurchaseVo vo) {
		mybatis.delete("mapper.sql_goods.DELETE_PURCHASE", vo);
	}
}
