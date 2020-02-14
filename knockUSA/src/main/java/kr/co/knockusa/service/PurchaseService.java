package kr.co.knockusa.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.PurchaseDao;
import kr.co.knockusa.vo.PurchaseVo;

@Service
public class PurchaseService {
	@Inject
	private PurchaseDao dao;
	
	public void insertPurchase(PurchaseVo vo) {
		dao.insertPurchase(vo);
	}
	
	// 구매 내역
 		// 비회원 상품 조회하기
	public PurchaseVo selectPurchaseNonUser(PurchaseVo vo) {
		return dao.selectPurchaseNonUser(vo);
	}
	
		// 회원 상품 목록 조회하기
	public List<PurchaseVo> selectPurchasesUser(String purchase_id) {
		return dao.selectPurchasesUser(purchase_id);
	}
	// 회원 상품 조회하기
	public PurchaseVo selectPurchaseUser(String purcahse_no) {
		return dao.selectPurchaseUser(purcahse_no);
	}
	
	// 구매 취소하기
	public void deletePurchase(PurchaseVo vo) {
		dao.deletePurchase(vo);
	}
}
