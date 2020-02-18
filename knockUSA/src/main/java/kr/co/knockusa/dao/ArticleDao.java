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
	
// 게시판 기본	
	public void insertArticle (ArticleVo vo) {
		mybatis.insert("mapper.sql_article.INSERT_ARTICLE", vo);
	}
	public ArticleVo selectArticle (String article_no) {
		return mybatis.selectOne("mapper.sql_article.SELECT_ARTICLE", article_no);
	}
	//게시판별 게시글 불러오기
	public List<ArticleVo> selectArticles (String article_cate) {
		return mybatis.selectList("mapper.sql_article.SELECT_ARTICLES", article_cate);
	}
	public List<ArticleVo> selectNoticeArticles (int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_NOTICE_ARTICLES", start);
	}
	public List<ArticleVo> selectReviewArticles (int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_REVIEW_ARTICLES", start);
	}
	public List<ArticleVo> selectNewsUSAArticles (int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_NEWSUSA_ARTICLES", start);
	}
	public List<ArticleVo> selectNewsCANArticles (int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_NEWSCAN_ARTICLES", start);
	}
	public List<ArticleVo> selectEventWinArticles (int start) {
		return mybatis.selectList("mapper.sql_article.SELECT_EVENTWIN_ARTICLES", start);
	}
	public void updateArticle (ArticleVo vo) {
		mybatis.update("mapper.sql_article.UPDATE_ARTICLE", vo);
	}
	public void deleteArticle (String article_no) {
		mybatis.delete("mapper.sql_article.DELETE_ARTICLE", article_no);
	}
	public BoardVo selectBoard(String cate) {
		return mybatis.selectOne("mapper.sql_article.SELECT_BOARD", cate);
	}
// 게시물 페이징
	public int getTotalArticle(String article_cate) {
		return mybatis.selectOne("mapper.sql_article.SELECT_TOTAL_ARTICLES",article_cate);
	}
	
// 게시물 조회수, 댓글 수
	public void updateArticleHit(String article_no) {
		mybatis.update("mapper.sql_article.UPDATE_ARTICLE_HIT", article_no);
	}
	public void updateArticleCommentCountUp(int article_no) {
		mybatis.update("mapper.sql_article.UPDATE_COMMENT_COUNT_UP", article_no);
	}
	public void updateArticleCommentCountDown(String article_no) {
		mybatis.update("mapper.sql_article.UPDATE_COMMENT_COUNT_DOWN", article_no);
	}
	
// 댓글 불러오기, 쓰기, 수정하기, 지우기
	public List<ArticleVo> selectComment(String article_no) {
		return mybatis.selectList("mapper.sql_article.SELECT_COMMENTS", article_no);
	}
	public void insertComment(ArticleVo comment) {
		mybatis.insert("mapper.sql_article.INSERT_COMMENT", comment);
	}
	public void updateComment() {
		mybatis.update("mapper.sql_article.UPDATE_COMMENT");
	}
	public void deleteComment(String comment_no) {
		mybatis.delete("mapper.sql_article.DELETE_COMMENT", comment_no);
	}
	
// home	
	// 최신 공지사항
	public List<ArticleVo> selectNotice() {
		return mybatis.selectList("mapper.sql_article.SELECT_HOME_NOTICE");
	}
	// 베스트 리뷰
	public ArticleVo selectBestReview() {
		return mybatis.selectOne("mapper.sql_article.SELECT_REVIEW_BEST");
	}
	// 최신 이벤트
	public List<ArticleVo> selectRecentEvent() {
		return mybatis.selectList("mapper.sql_article.SELECT_RECENT_EVENT");
	}
}
