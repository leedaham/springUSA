package kr.co.knockusa.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.service.ArticleService;
import kr.co.knockusa.service.GoodsService;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.GoodsVo;

@Controller
public class MainController {
	
	@Inject
	private GoodsService goodsService;
	@Inject
	private ArticleService articleService;
	
	@RequestMapping(value= {"/", "/index"})
	public String index() {
		return "/index";
	}
	@RequestMapping("/home")
	public String home(Model model) {
	
		List<GoodsVo> hotItems = goodsService.selectGoodsBest();
		model.addAttribute("hotItems", hotItems);
		
		List<ArticleVo> notice = articleService.selectNotice();
		model.addAttribute("notice", notice);
		
		ArticleVo bestReview = articleService.selectBestReview();
		model.addAttribute("bestReview", bestReview);
		
		List<ArticleVo> events = articleService.selectRecentEvent();
		model.addAttribute("events", events);
		
		return "/home";
	}

}
