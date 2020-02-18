package kr.co.knockusa.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.knockusa.user.dao.UserDao;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.PurchaseVo;

@Service
public class LoginService {
	@Inject
	private UserDao dao;
	
	public UserVo selectUser(UserVo vo) {
		return dao.selectUser(vo);
	}
	
	// 아이디 / 비밀번호 찾기
	public UserVo findId(UserVo vo) {
		return dao.findId(vo);
	}
	public UserVo findPw(UserVo vo) {
		return dao.findPw(vo);
	}
		// 새로운 비밀번호 설정
	public void newPwSet(UserVo vo) {
		dao.newPwSet(vo);
	}
}
