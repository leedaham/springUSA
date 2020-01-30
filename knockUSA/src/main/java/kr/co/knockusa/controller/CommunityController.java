package kr.co.knockusa.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.service.CommunityService;
import kr.co.knockusa.vo.BoardVo;

@Controller
public class CommunityController {
	
	@Inject
	CommunityService service;
	
	@GetMapping("/community/notice")
	public String notice(Model model) {
		
		BoardVo boardCate = service.selectNoticeBoard();
		model.addAttribute("boardCate", boardCate);
		
		return "/board/list";
	}
	@GetMapping("/community/review")
	public String review(Model model) {
		
		BoardVo boardCate = service.selectReviewBoard();
		model.addAttribute("boardCate",boardCate);
		
		return "/board/list";
	}
	@GetMapping("/community/newsUSA")
	public String newsUSA(Model model) {
		
		BoardVo boardCate = service.selectNewsUSABoard();
		model.addAttribute("boardCate",boardCate);
		
		return "/board/list";
	}
	@GetMapping("/community/newsCAN")
	public String newsCAN(Model model) {
		
		BoardVo boardCate = service.selectNewsCANBoard();
		model.addAttribute("boardCate",boardCate);
		
		return "/board/list";
	}
	@GetMapping("/community/eventWin")
	public String eventWin(Model model) {
		
		BoardVo boardCate = service.selectEventWinBoard();
		model.addAttribute("boardCate",boardCate);
		
		return "/board/list";
	}
}
