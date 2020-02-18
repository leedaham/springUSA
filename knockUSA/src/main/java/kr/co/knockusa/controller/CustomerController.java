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
import kr.co.knockusa.service.CustomerService;
import kr.co.knockusa.user.service.LoginService;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.ArticleVo;
import kr.co.knockusa.vo.QnaVo;

@Controller
public class CustomerController {
	@Inject
	private CustomerService customerService;
	@Inject
	private LoginService loginService;
	
// 자주묻는질문
	@RequestMapping(value= {"/customer", "/customer/faq"})
	public String faq (Model model) {
		List<ArticleVo> faqs = customerService.selectFaqs();
		String sort = "faq";
		model.addAttribute("faqs", faqs);
		model.addAttribute("sort", sort);
		return "/customer/faq";
	}
	
// 문의하기
	//비로그인 - 회원? 비회원?
	@RequestMapping("/customer/qna")
	public String qnaWho (Model model, HttpSession session) {
		UserVo user = (UserVo)session.getAttribute("user");
		
		//로그인 된 상태라면
		if(user == null) {
			return "/customer/qnaWho";
		}else {
			return "redirect:/customer/qnaList";
		}
		
	}
	//회원!
	@PostMapping("/customer/qnaLogin")
	public String qnaLogin(UserVo vo, HttpSession session) {
		UserVo user = loginService.selectUser(vo);
		if(user == null) {
			return "redirect:/customer/qna?user=no";
		}else {
			session.setAttribute("user", user);
			return "redirect:/customer/qnaList";
		}
	}
	
	//비회원!
	@RequestMapping("/customer/qnaNonUser")
	public String qnaNonUser() {
		return "/customer/qnaNonUser";
	}
	
	
	
	@RequestMapping("/customer/qnaList")
	public String qnaList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo) session.getAttribute("user");
		String sort = "alreadyLogin";
		
		List<QnaVo> qnaList = customerService.selectQnaList(user);
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("sort", sort);
		
		return "/customer/qnaList";
	}
	
	@GetMapping("/customer/qnaToInquire")
	public String qnaToInquire(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo) session.getAttribute("user");
		String sort = "alreadyLogin";
		
		model.addAttribute("user", user);
		model.addAttribute("sort", sort);
		
		return "/customer/qnaToInquire";
	}
	@PostMapping("/customer/qnaToInquire")
	public String qnaToInquire(QnaVo vo, HttpServletRequest req) {
		vo.setQna_regip(req.getRemoteAddr());
		
		
		customerService.insertQna(vo);
		
		return "redirect:/customer/qnaList";
	}
	
	// 비회원 조회
	@PostMapping("/customer/qnaNonUserList")
	public String qnaNonUserList(QnaVo vo, Model model) {
		String sort = "alreadyLogin";
		
		List<QnaVo> qnaList = customerService.selectQnaListNonUser(vo);
		if(qnaList.isEmpty()) {
			return "redirect:/customer/qna?nonUser=no";
		}else {
			model.addAttribute("qnaList", qnaList);
			model.addAttribute("sort", sort);
			
			return "/customer/qnaList";
		}
	}
	
	// 질문, 답변 보기
	@RequestMapping("/customer/qnaView")
	public String qnaView(Model model, QnaVo vo) {
		String sort = "alreadyLogin";
		QnaVo qna = customerService.selectQna(vo);
		
		model.addAttribute("sort", sort);
		model.addAttribute("qna", qna);
		
		return "/customer/qnaView";
	}
}
