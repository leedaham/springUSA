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
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.BoardVo;

@Controller
public class CommunityController {
	
	@Inject
	ArticleService service;

	@GetMapping("/community")
	public String communityList(String cate, Model model) {
		List<ArticleVo> articles = service.selectArticles(cate);
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		model.addAttribute("articles", articles);
		
		return "/board/list";
	}
	@GetMapping("/community/view")
	public String communityView(String article_no, String cate, Model model) {
		ArticleVo article = service.selectArticle(article_no);
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		model.addAttribute("article", article);
		
		return "/board/view";
	}
	@GetMapping("/community/write")
	public String communityWrite(String cate, Model model) {
		BoardVo board = service.selectBoard(cate);
		
		model.addAttribute("board", board);
		return "/board/write";
	}
	@PostMapping("/community/write")
	public String communityWriteDone(String title, String content, String cate, HttpServletRequest req) {
		HttpSession session = req.getSession();
		BoardVo board = service.selectBoard(cate);
		
		ArticleVo vo = new ArticleVo();
		vo.setArticle_cate(cate);
		vo.setArticle_title(title);
		vo.setArticle_content(content);
		// vo.setArticle_id(?); 로그인 구현 먼저
		vo.setArticle_regip(req.getRemoteAddr());
		
		service.insertArticle(vo);
		
		return "redirect:/community/view?cate="+cate;
	}
	
	
	
//	/* 기존방법 */
//	@GetMapping("/community/eventWin")
//	public String eventWin(Model model) {
//		List<ArticleVo> articles = service.selectEventWinArticles();
//		BoardVo board = service.selectEventWinBoard();
//		
//		model.addAttribute("board",board);
//		model.addAttribute("articles", articles);
//		return "/board/list";
//	}
//	@GetMapping("/community/eventWin/view")
//	public String eventWinArticle(String article_no, Model model) {
//		ArticleVo article = service.selectEventWinArticle(article_no);
//		BoardVo board = service.selectEventWinBoard();
//		
//		model.addAttribute("board", board);
//		model.addAttribute("article", article);
//		
//		return "/board/view";
//	}
}
