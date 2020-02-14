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
	private ArticleDao articleDao;
	
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
	public void updateArticle (ArticleVo vo) {
		articleDao.updateArticle(vo);
	}
	public void deleteArticle(String article_no) {
		articleDao.deleteArticle(article_no);
	}
	public void updateArticleHit(String article_no) {
		articleDao.updateArticleHit(article_no);
	}
	// 댓글 작성, 삭제시 댓글 수 +/- 1
	public void updateArticleCommentCountUp(int article_no) {
		articleDao.updateArticleCommentCountUp(article_no);
	}
	public void updateArticleCommentCountDown(String article_no) {
		articleDao.updateArticleCommentCountDown(article_no);
	}
	
	// 댓글 불러오기, 쓰기, 수정하기, 지우기
	public List<ArticleVo> selectComment(String article_no) {
		return articleDao.selectComment(article_no);
	}
	public void insertComment(ArticleVo comment) {
		articleDao.insertComment(comment);
	}
	public void updateComment() {
		articleDao.updateComment();
	}
	public void deleteComment(String comment_no) {
		articleDao.deleteComment(comment_no);
	}
	// home 공지사항
	public List<ArticleVo> selectNotice() {
		return articleDao.selectNotice();
	}
	// home 베스트 리뷰 
	public ArticleVo selectBestReview() {
		return articleDao.selectBestReview();
	}
	

}
