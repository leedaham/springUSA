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

	
}
