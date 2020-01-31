package kr.co.knockusa.register.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.ReigsterDao;
import kr.co.knockusa.vo.TermsVo;
import kr.co.knockusa.vo.UserVo;

@Service
public class RegisterService {
	
	@Inject
	private ReigsterDao dao;
	
	public void insertUser(UserVo vo) {
		dao.insertUser(vo);
	}
	public UserVo selectUser() {
		return null;
	}
	public List<UserVo> selectUsers() {
		return null;
	}
	public void updateUser() {}
	public void deleteUser() {}
	
	public TermsVo selectTerms() {
		return dao.selectTerms();
	}
	
	public int checkId(String user_id) {
		return dao.checkId(user_id);
	}
	public int checkHp(String user_hp) {
		return dao.checkHp(user_hp);
	}
}
