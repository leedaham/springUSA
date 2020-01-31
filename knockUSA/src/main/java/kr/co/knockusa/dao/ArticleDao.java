package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.BoardVo;

@Repository
public class ArticleDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertArticle (ArticleVo vo) {
		mybatis.insert("mapper.sql_article.INSERT_ARTICLE", vo);
	}
	public ArticleVo selectArticle (String article_no) {
		return mybatis.selectOne("mapper.sql_article.SELECT_ARTICLE", article_no);
	}
	public List<ArticleVo> selectArticles (String cate) {
		return mybatis.selectList("mapper.sql_article.SELECT_ARTICLES", cate);
	}
	public void updateArticle () {
		mybatis.update("mapper.sql_article.UPDATE_ARTICLE");
	}
	public void deleteArticle () {
		mybatis.delete("mapper.sql_article.DELETE_ARTICLE");
	}
	
	public BoardVo selectBoard(String cate) {
		return mybatis.selectOne("mapper.sql_article.SELECT_BOARD", cate);
	}
	
	
}
