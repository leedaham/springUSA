package kr.co.knockusa.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.ArticleVo;

@Repository
public class ArticleDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertArticle () {
		mybatis.insert("mapper.sql_board.INSERT_ARTICLE");
	}
	public ArticleVo selectArticle () {
		return mybatis.selectOne("mapper.sql_board.SELECT_ARTICLE");
	}
	public List<ArticleVo> selectArticles () {
		return mybatis.selectList("mapper.sql_board.SELECT_ARTICLES");
	}
	public void updateArticle () {
		mybatis.update("mapper.sql_board.UPDATE_ARTICLE");
	}
	public void deleteArticle () {
		mybatis.delete("mapper.sql_board.DELETE_ARTICLE");
	}
	
	
	
}
