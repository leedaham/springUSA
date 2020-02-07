package kr.co.knockusa.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.user.vo.NonUserVo;
import kr.co.knockusa.user.vo.TermsVo;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.PurchaseVo;

@Repository
public class UserDao {
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertUser(UserVo vo) {
		mybatis.insert("mapper.sql_user.INSERT_USER", vo);
	}
	public UserVo selectUser(UserVo vo) {
		return mybatis.selectOne("mapper.sql_user.SELECT_USER", vo);
	};
	public List<UserVo> selectUsers(){
		return mybatis.selectList("mapper.sql_user.SELECT_USERS");
	}
	public void updateUser() {}
	public void deleteUser() {}
	
	public TermsVo selectTerms() {
		return mybatis.selectOne("mapper.sql_user.SELECT_TERMS");
	}
	
	// 구매내역, 구매정보
	public void insert() {}
	public PurchaseVo selectItem(PurchaseVo vo) {
		return mybatis.selectOne("mapper.sql_user.SELECT_ITEM_NONUSER", vo);
	}
	public void selectItems() {}
	public void update() {}
	public void delete() {}
	
	// 비회원 로그인
	public NonUserVo selectNonUser(NonUserVo vo) {
		return mybatis.selectOne("mapper.sql_user.SELECT_NONUSER", vo);
	}
	
	// 중복확인
	public int checkId(String user_id) {
		return mybatis.selectOne("mapper.sql_user.CHECK_ID", user_id);
	}
	public int checkHp(String user_hp) {
		return mybatis.selectOne("mapper.sql_user.CHECK_HP", user_hp);
	}
	public int checkEmail(String user_email) {
		return mybatis.selectOne("mapper.sql_user.CHECK_EMAIL", user_email);
	}
}
