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
//게시판 기본	
	public BoardVo selectBoard(String cate) {
	return articleDao.selectBoard(cate);
	}
	public List<ArticleVo> selectArticles(String cate, int start) {
		if(cate.equals("notice")) {
			return articleDao.selectNoticeArticles(start);
		}else if(cate.equals("review")) {
			return articleDao.selectReviewArticles(start);
		}else if(cate.equals("newsUSA")) {
			return articleDao.selectNewsUSAArticles(start);
		}else if(cate.equals("newsCAN")) {
			return articleDao.selectNewsCANArticles(start);
		}else if(cate.equals("eventWin")) {
			return articleDao.selectEventWinArticles(start);
		}
		return null;
	}
	public List<ArticleVo> selectArticles(String cate){
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
	
// 게시물 페이징
	public int getTotalArticle(String article_cate) {
		return articleDao.getTotalArticle(article_cate);
	}
	// LIMIT 번호
	public int getLimitStart(String pg) {
		if(pg == null) {
			return 0;
		}else {
			int page = Integer.parseInt(pg);
			return (page - 1)*10;
		}
	}
	// 현재 페이지의 시작페이지 계산
	public int getStartPg(String pg) {
		if(pg ==null) {
			return 0;
		}else {
			int page = Integer.parseInt(pg);
			int startPg = page/10;
			if(page % 10 == 0) {
				return (startPg*10)-9;
			}
			return (startPg*10)+1;
		}
	}
	// 페이지번호 계산
	public int getPageEnd(int total) {
		int pageEnd = 0;
		if(total % 10 ==0) {
			pageEnd = total/10;
		}else {
			pageEnd = (total/10) + 1;
		}
		return pageEnd;
	}
	// 글 순서 카운터 번호
	public int getListCount(int total, int start) {
		return (total - start)+1;
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
	
// home
	// 최신 공지사항
	public List<ArticleVo> selectNotice() {
		return articleDao.selectNotice();
	}
	// 베스트 리뷰 
	public ArticleVo selectBestReview() {
		return articleDao.selectBestReview();
	}
	// 최신 이벤트
	public List<ArticleVo> selectRecentEvent() {
		return articleDao.selectRecentEvent();
	}

}
