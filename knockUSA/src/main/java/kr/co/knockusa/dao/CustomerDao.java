package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.QnaVo;

@Repository
public class CustomerDao {
	@Inject
	private SqlSessionTemplate mybatis;

	// customer FAQ
	public List<ArticleVo> selectFaqs(){
		return mybatis.selectList("mapper.sql_article.SELECT_FAQS");
	}
	// customer QNA
	public List<QnaVo> selectQnaList(UserVo user){
		return mybatis.selectList("mapper.sql_article.SELECT_QNAS", user);
	}
	public void insertQna(QnaVo vo) {
		mybatis.insert("mapper.sql_article.INSERT_QNA", vo);
	}
	public QnaVo selectQna(QnaVo qna) {
		return mybatis.selectOne("mapper.sql_article.SELECT_QNA", qna);
	}
	public List<QnaVo> selectQnaListNonUser(QnaVo vo){
		return mybatis.selectList("mapper.sql_article.SELECT_QNAS_NON_USER", vo);
	}
	
}
