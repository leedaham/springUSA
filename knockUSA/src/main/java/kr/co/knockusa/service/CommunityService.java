package kr.co.knockusa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.ArticleDao;
import kr.co.knockusa.dao.CommunityDao;
import kr.co.knockusa.vo.BoardVo;

@Service
public class CommunityService {
	
	@Autowired
	ArticleDao articleDao;
	
	@Autowired
	CommunityDao communityDao;
	
	
	public BoardVo selectNoticeBoard() {
		String cate = "notice";
		return communityDao.selectBoard(cate);
	}
	public BoardVo selectReviewBoard() {
		String cate = "review";
		return communityDao.selectBoard(cate);
	}
	public BoardVo selectNewsUSABoard() {
		String cate = "newsUSA";
		return communityDao.selectBoard(cate);
	}
	public BoardVo selectNewsCANBoard() {
		String cate = "newsCAN";
		return communityDao.selectBoard(cate);
	}
	public BoardVo selectEventWinBoard() {
		String cate = "eventWin";
		return communityDao.selectBoard(cate);
	}
	
}
