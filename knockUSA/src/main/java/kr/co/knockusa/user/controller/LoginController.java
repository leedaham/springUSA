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
import kr.co.knockusa.user.vo.NonUserVo;
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
	@PostMapping("/user/nonUserLogin")
	public String nonUserLogin(String nonUser_name_kor, String nonUser_purchase_no, HttpSession session) {
		NonUserVo nonUser = new NonUserVo();
		nonUser.setNonUser_name_kor(nonUser_name_kor);
		nonUser.setNonUser_purchase_no(nonUser_purchase_no);
		
		NonUserVo non = service.selectNonUser(nonUser);
		
		if(non.getNonUser_id() == null) {
			return "redirect:/user/loginFromReserList";
		}else {
			PurchaseVo vo = new PurchaseVo();
			vo.setPurchase_no(non.getNonUser_purchase_no());
			vo.setPurchase_id(non.getNonUser_id());
			
			PurchaseVo rsList = service.selectItem(vo);
			session.setAttribute("rsList", rsList);
			return "redirect:/user/myPage/reserList";
		}
	}
	@GetMapping("/user/loginFromReservation")
	public String LoginFromReservation(String goods_no, HttpServletRequest req) {
		req.setAttribute("goods_number", goods_no);
		return "/user/loginFromReservation";
	}
	@PostMapping("/user/loginFromReservation")
	public String LoginFromReservation(UserVo vo, String goods_number, HttpSession session) {
		UserVo user = service.selectUser(vo);
		int goods_no = Integer.parseInt(goods_number);
		if(user == null) {
			return "redirect:/user/loginFromReservation";
		}else {
			session.setAttribute("user", user);
			return "redirect:/goods/travelPackage?goods_no="+goods_no;
		}
	}
}
