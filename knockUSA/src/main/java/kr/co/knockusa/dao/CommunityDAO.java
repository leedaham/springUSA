package kr.co.knockusa.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDAO {
	
	@Inject
	private SqlSessionTemplate mybatis;
	
	
	
	
}
