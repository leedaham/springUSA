package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.TermsVo;
import kr.co.knockusa.vo.UserVo;

@Repository
public class ReigsterDao {
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertUser(UserVo vo) {
		mybatis.insert("mapper.sql_user.INSERT_USER", vo);
	}
	public UserVo selectUser() {
		return mybatis.selectOne("mapper.sql_user.SELECT_USER");
	};
	public List<UserVo> selectUsers(){
		return mybatis.selectList("mapper.sql_user.SELECT_USERS");
	}
	public void updateUser() {}
	public void deleteUser() {}
	
	public TermsVo selectTerms() {
		return mybatis.selectOne("mapper.sql_user.SELECT_TERMS");
	}
	
	// 중복확인
	public int checkId(String user_id) {
		return mybatis.selectOne("mapper.sql_user.CHECK_ID", user_id);
	}
	public int checkHp(String user_hp) {
		return mybatis.selectOne("mapper.sql_user.CHECK_HP", user_hp);
	}
}
