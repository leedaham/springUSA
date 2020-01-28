package kr.co.knockusa.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.service.CommunityService;

@Controller
public class CommunityController {
	
	@Inject
	CommunityService service;
	
	@RequestMapping("/community/notice")
	public String notice() {
		String cate = "notice";
		service.notice(cate);
		return "/board/list";
	}
}
