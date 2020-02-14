package kr.co.knockusa.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.user.service.RegisterService;
import kr.co.knockusa.user.vo.TermsVo;

@Controller
public class TermsController {
	
	@Inject
	private RegisterService service;
	
	@RequestMapping("/terms/chiefPrivacy")
	public String termsPage1(Model model) {
		TermsVo terms = service.selectTerms();
		String sort = "cp";
		model.addAttribute("terms", terms);
		model.addAttribute("sort", sort);
		return "/terms/chiefPrivacy";
	}
	@RequestMapping("/terms/standardTerm")
	public String termsPage2(Model model) {
		TermsVo terms = service.selectTerms();
		String sort = "st";
		model.addAttribute("terms", terms);
		model.addAttribute("sort", sort);
		return "/terms/standardTerm";
	}
	@RequestMapping("/terms/emailRefuse")
	public String termsPage3(Model model) {
		TermsVo terms = service.selectTerms();
		String sort = "er";
		model.addAttribute("terms", terms);
		model.addAttribute("sort", sort);
		return "/terms/emailRefuse";
	}
}
