package kr.co.knockusa.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.user.service.LoginService;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.GoodsVo;
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
			return "redirect:/user/login?user=no";
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

	@GetMapping("/user/loginFromReservation")
	public String LoginFromReservation(String goods_no, HttpServletRequest req) {
		req.setAttribute("goods_number", goods_no);
		return "/user/loginFromReservation";
	}
	@PostMapping("/user/loginFromReservation")
	public String LoginFromReservation(UserVo vo, String goods_number, HttpSession session) {
		UserVo user = service.selectUser(vo);
		if(user == null) {
			session.setAttribute("goods_number", goods_number);
			return "redirect:/user/loginFromReservation?goods_number="+goods_number+"&user=no";
		}else {
			int goods_no = Integer.parseInt(goods_number);
			session.setAttribute("user", user);
			return "redirect:/goods/travelPackage?goods_no="+goods_no;
		}
	}
	
	// 아이디 비밀번호 찾기
	@GetMapping("/user/idpw")
	public String idpw() {
		return "/user/idpw";
	}
	@PostMapping("/user/findId")
	public String findId(UserVo user, Model model) {
		//아이디 찾기
		UserVo findId = service.findId(user);
		
		model.addAttribute("findId", findId);
		
		return "/user/idRs";
	}
	@PostMapping("/user/findPw")
	public String findPw(UserVo user, Model model) {
		//비밀번호 찾기
		UserVo findPw = service.findPw(user);
		
		model.addAttribute("findPw", findPw);
		
		return "/user/pwRs";
	}
	@PostMapping("/user/newPwRs")
	public void setNewPw(UserVo vo) {
		service.newPwSet(vo);
	}
}
