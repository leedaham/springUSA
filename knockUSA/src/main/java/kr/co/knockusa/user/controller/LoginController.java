package kr.co.knockusa.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.user.service.LoginService;
import kr.co.knockusa.user.vo.NonUserVo;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.PurchaseVo;

@Controller
public class LoginController {
	
	@Inject
	private LoginService service;
	
	@GetMapping("/user/login")
	public String login() {
		return "/user/login";
	}
	@PostMapping("/user/login")
	public String login(UserVo vo, HttpSession session) {
		UserVo user = service.selectUser(vo);
		if(user == null) {
			return "redirect:/user/login";
		}else {
			session.setAttribute("user", user);
			return "redirect:/home";
		}
	}
	@RequestMapping("/user/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}
	@GetMapping("/user/myPage/reserList_needLogin")
	public String loginFromReserList() {
		return "/user/loginFromReserList";
	}
	@RequestMapping("/user/nonUserLogin")
	public String nonUserLogin(NonUserVo non, HttpSession session) {
		if(non == null) {
			return "redirect:/user/loginFromReserList";
		}else {
			String PurchaseNo = non.getNonUser_purchase_no();
			String PurchaseId = non.getNonUser_name_eng() + non.getNonUser_purchase_no();
			
			PurchaseVo vo = new PurchaseVo();
			vo.setPurchase_no(PurchaseNo);
			vo.setPurchase_id(PurchaseId);
			
			PurchaseVo rsList = service.selectItem(vo);
			session.setAttribute("rsList", rsList);
			return "redirect:/user/myPage/reserList";
		}
	}
	@RequestMapping("/user/myPage/reserList")
	public String reserveList() {
		
		return "/user/myPage/reserList";
	}
}
