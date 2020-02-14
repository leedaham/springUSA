package kr.co.knockusa.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.service.ArticleService;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.BoardVo;

@Controller
public class CommunityController {
	
	@Inject
	ArticleService service;
	
	// 커뮤니티 메뉴 진입 - cate로 게시판 파악 후 게시물 리스트 보여주기
	@GetMapping("/community")
	public String communityList(String cate, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		List<ArticleVo> articles = service.selectArticles(cate);
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		model.addAttribute("articles", articles);
		model.addAttribute("user", user);
		
		return "/board/list";
	}
	// 글 보기 - article_no로 글 파악 후 글 보여주기, cate로 목록 돌아갈 게시물 파악 후 게시물 리스트로 가기
	@GetMapping("/community/view")
	public String communityView(String article_no, String cate, Model model) {
		ArticleVo article = service.selectArticle(article_no);
		BoardVo board = service.selectBoard(cate);
		
		service.updateArticleHit(article_no);
		List<ArticleVo> comments = service.selectComment(article_no);
		
		model.addAttribute("board", board);
		model.addAttribute("article", article);
		model.addAttribute("comments", comments);
		
		return "/board/view";
	}
	// 댓글 쓰기 프로세스
	@PostMapping("/community/comment/write")
	public String communityCommentWrite(HttpServletRequest req, ArticleVo comment, String cate) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo) session.getAttribute("user");
		int article_no = comment.getArticle_parent();
		String article_id = user.getUser_id();
		String article_regip = req.getRemoteAddr();
		
		comment.setArticle_id(article_id);
		comment.setArticle_regip(article_regip);
		comment.setArticle_cate(cate);
		
		service.insertComment(comment);
		service.updateArticleCommentCountUp(article_no);
		return "redirect:/community/view?cate="+cate+"&article_no="+article_no;
	}
	// 댓글 수정하기
	
	
	// 댓글 삭제하기
	@RequestMapping("/community/comment/delete")
	public String communityCommentDelete(String article_no, String cate, String comment_no) {
		service.deleteComment(comment_no);
		service.updateArticleCommentCountDown(article_no);
		return "redirect:/community/view?cate="+cate+"&article_no="+article_no;
	}
	
	// 글 쓰기 - 글 쓰기 페이지 진입
	@GetMapping("/community/write")
	public String communityWrite(String cate, Model model) {
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		return "/board/write";
	}
	
	// 글 쓰기 프로세스 - INSERT 후 글 쓴 게시판으로 이동
	@PostMapping("/community/write")
	public String communityWriteDone(String title, String content, String cate, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo) session.getAttribute("user");
		
		BoardVo board = service.selectBoard(cate);
		
		ArticleVo vo = new ArticleVo();
		vo.setArticle_cate(cate);
		vo.setArticle_title(title);
		vo.setArticle_content(content);
		vo.setArticle_id(user.getUser_id());
		vo.setArticle_regip(req.getRemoteAddr());
		
		service.insertArticle(vo);
		
		return "redirect:/community?cate="+cate;
	}
	
	// 글 수정하기 - 글 수정 페이지 진입
	@GetMapping("/community/modify")
	public String communityModify(String article_no, String cate, Model model) {
		ArticleVo article = service.selectArticle(article_no);
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		model.addAttribute("article", article);
		
		return "/board/modify";
	}
	// 글 수정 프로세스 - UPDATE 후 수정한 글 보기 페이지로 이동
	@PostMapping("/community/modify")
	public String communityModify(ArticleVo vo, String article_no, String cate, HttpServletRequest req) {
		vo.setArticle_modify_regip(req.getRemoteAddr());
		service.updateArticle(vo);
		return "redirect:/community/view?cate="+cate+"&article_no="+article_no;
	}
	
	// 글 삭제 프로세스 - DELETE 후 게시판으로 이동
	@RequestMapping("/community/delete")
	public String communityDelete(String cate, String article_no) {
		service.deleteArticle(article_no);
		return "redirect:/community?cate="+cate;
	}
	
	
	// event page 게시판으로 이동
	@RequestMapping(value= {"/community/event", "/community/eventNow"})
	public String eventNow(String when, Model model) {
		model.addAttribute("when", when);
		return "/community/eventNow";
	}
	

}
