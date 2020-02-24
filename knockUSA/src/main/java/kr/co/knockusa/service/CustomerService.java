package kr.co.knockusa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.CustomerDao;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.QnaVo;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerDao dao;

	// customer FAQ
	public List<ArticleVo> selectFaqs(){
		return dao.selectFaqs();
	}
	
	// customer QNA
	public List<QnaVo> selectQnaList(UserVo user){
		return dao.selectQnaList(user);
	}
	public void insertQna(QnaVo vo) {
		dao.insertQna(vo);
	}
	
	public QnaVo selectQna(QnaVo qna) {
		return dao.selectQna(qna);
	}
	public QnaVo selectAnswer(QnaVo qna) {
		return dao.selectAnswer(qna);
	}
	
		// 비회원
	public List<QnaVo> selectQnaListNonUser(QnaVo vo){
		return dao.selectQnaListNonUser(vo);
	}
}
