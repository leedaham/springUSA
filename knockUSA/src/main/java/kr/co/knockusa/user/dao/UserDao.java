package kr.co.knockusa.user.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.user.vo.TermsVo;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.user.vo.WishVo;
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

	// 비밀번호 변경
	public void updatePW(UserVo vo) {
		mybatis.update("mapper.sql_user.UPDATE_PASSWORD", vo);
	}
	
	// 관심상품 등록하기
	public void insertWish(WishVo vo) {
		mybatis.insert("mapper.sql_user.INSERT_WISH", vo);
	}
	// 관심상품 불러오기
	public List<WishVo> selectWish(UserVo vo) {
		return mybatis.selectList("mapper.sql_user.SELECT_WISHLIST", vo);
	}
	// 관심상품 삭제하기
	public void deleteWish(String wish_no) {
		mybatis.delete("mapper.sql_user.DELETE_WISHITEM", wish_no);
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
	
	// 아이디 / 비밀번호 찾기
	public UserVo findId(UserVo vo) {
		return mybatis.selectOne("mapper.sql_user.FIND_ID", vo);
	}
	public UserVo findPw(UserVo vo) {
		return mybatis.selectOne("mapper.sql_user.FIND_PW", vo);
	}
		// 새로운 비밀번호 설정
	public void newPwSet(UserVo vo) {
		mybatis.update("mapper.sql_user.NEW_PW_SET", vo);
	}
}
