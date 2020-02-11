package kr.co.knockusa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.knockusa.dao.ArticleDao;
import kr.co.knockusa.dao.CommunityDao;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.BoardVo;

@Service
public class ArticleService {
	
	@Autowired
	ArticleDao articleDao;
	
	public BoardVo selectBoard(String cate) {
	return articleDao.selectBoard(cate);
	}
	public List<ArticleVo> selectArticles(String cate) {
	return articleDao.selectArticles(cate);
	}
	public ArticleVo selectArticle(String article_no) {
		return articleDao.selectArticle(article_no);
	}
	public void insertArticle(ArticleVo vo) {
		articleDao.insertArticle(vo);
	}
	public void deleteArticle(String article_no) {
		articleDao.deleteArticle(article_no);
	}
	public void updateArticleHit(String article_no) {
		articleDao.updateArticleHit(article_no);
	}
	
	// home 베스트 리뷰 
	public ArticleVo selectBestReview() {
		return articleDao.selectBestReview();
	}
	
//	/* 기존방법 */
//	public BoardVo selectEventWinBoard() {
//		String cate = "eventWin";
//		return articleDao.selectBoard(cate);
//	}
//	public List<ArticleVo> selectEventWinArticles() {
//		String cate = "eventWin";
//		return articleDao.selectArticles(cate);
//	}
//	public ArticleVo selectEventWinArticle(String article_no) {
//		return articleDao.selectArticle(article_no);
//	}
}
