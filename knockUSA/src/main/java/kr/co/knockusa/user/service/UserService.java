package kr.co.knockusa.user.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.knockusa.user.dao.UserDao;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.user.vo.WishVo;

@Service
public class UserService {
	@Inject
	private UserDao dao;
	
	// 비밀번호 변경
	public void updatePW(UserVo vo) {
		dao.updatePW(vo);
	}
	
	// 관심상품 등록하기
	public void insertWish(WishVo vo) {
		dao.insertWish(vo);
	}
	// 관심상품 불러오기
	public List<WishVo> selectWish(UserVo vo) {
		return dao.selectWish(vo);
	}
	// 관심상품 삭제하기
	public void deleteWish(String wish_no) {
		dao.deleteWish(wish_no);
	}
}
