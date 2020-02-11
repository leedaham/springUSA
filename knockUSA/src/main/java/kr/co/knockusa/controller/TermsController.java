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
		model.addAttribute("terms", terms);
		return "/terms/chiefPrivacy";
	}
	@RequestMapping("/terms/standardTerm")
	public String termsPage2(Model model) {
		TermsVo terms = service.selectTerms();
		model.addAttribute("terms", terms);
		return "/terms/standardTerm";
	}
	@RequestMapping("/terms/emailRefuse")
	public String termsPage3(Model model) {
		TermsVo terms = service.selectTerms();
		model.addAttribute("terms", terms);
		return "/terms/emailRefuse";
	}
}
