package kr.co.knockusa.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.knockusa.vo.BoardVo;

@Repository
public class CommunityDao {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	public BoardVo selectBoard(String cate) {
		return mybatis.selectOne("mapper.sql_article.SELECT_BOARD", cate);
	}
	
	
}
