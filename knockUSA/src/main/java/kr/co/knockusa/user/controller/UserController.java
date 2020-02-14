package kr.co.knockusa.user.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.knockusa.service.PurchaseService;
import kr.co.knockusa.user.service.LoginService;
import kr.co.knockusa.user.service.UserService;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.user.vo.WishVo;
import kr.co.knockusa.vo.PurchaseVo;

@Controller
public class UserController {

	@Inject
	private PurchaseService service;
	@Inject
	private UserService userService;
	@Inject
	private LoginService loginService;
	
	// 예약 리스트
	@RequestMapping("/user/myPage/reservationList")
	public String reserveList() {
		
		return "/user/mypage/reservationList";
	}
	
	// 예약 상품 페이지
	@RequestMapping("/user/myPage/reservationOne")
	public String reserveOne(String purchase_no, Model model) {
		PurchaseVo purchase = service.selectPurchaseUser(purchase_no);
		
		model.addAttribute("purchase", purchase);
		return "/user/myPage/reservationOne";
	}
	
	// 예약확인 클릭시 로그인페이지로 이동
	@GetMapping("/user/myPage/reserList_needLogin")
	public String loginFromReserList() {
		return "/user/loginFromReserList";
	}
	
	// 로그인이 안된 상태에서 예약확인 혹은 비로그인 조회
	@RequestMapping("/user/LoginByReservationList")
	public String ReservationNotYetLogin(UserVo vo, String purchase_name_kor, String purchase_no, HttpServletRequest req, Model model) {
		// 회원, 비회원 모두 이 주소로 넘어옴. 여기서 회원과 비회원을 구분해야함
		UserVo user = loginService.selectUser(vo);
		HttpSession session = req.getSession();
		
		if(user == null) {
			// 비회원은 주문번호와 이름으로 예약내역 셀렉트 해오기
			PurchaseVo nonUser = new PurchaseVo();
			nonUser.setPurchase_name_kor(purchase_name_kor);
			nonUser.setPurchase_no(purchase_no);
			PurchaseVo purchase= service.selectPurchaseNonUser(nonUser);
				if(purchase == null) {
					return "/user/loginFromReserList";
				}else {
					model.addAttribute("purchase", purchase);
					return "/user/myPage/reservationOne";
				}
			
		}else {
			session.setAttribute("user", user);
			
			// 회원은 유저 정보로 예약내역 셀렉트해오기
			String purchase_id = user.getUser_id();
			List<PurchaseVo> purchaseList = service.selectPurchasesUser(purchase_id);
			String userNonUser = "user";
			String sort = "reservation";
			
			model.addAttribute("purchaseList", purchaseList);
			model.addAttribute("userNonUser", userNonUser);
			model.addAttribute("sort", sort);
			
			return "/user/myPage/reservationList";
						
		}
	}
	
	// 로그인이 된 상태에서 예약확인 클릭
	@RequestMapping("/user/ByReservationList")
	public String reservationAlreadyLogin(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		
		String purchase_id = user.getUser_id();
		List<PurchaseVo> purchaseList = service.selectPurchasesUser(purchase_id);
		String userNonUser = "user";
		String sort = "reservation";
		
		
		model.addAttribute("purchaseList", purchaseList);
		model.addAttribute("userNonUser", userNonUser);
		model.addAttribute("sort", sort);
		return "/user/myPage/reservationList";
	}
	
	// 마이페이지 클릭시
	@RequestMapping("/user/myPage")
	public String myPage(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		String sort = "myPage";
		String userNonUser = "user";
		
		model.addAttribute("sort", sort);
		model.addAttribute("userNonUser", userNonUser);
		model.addAttribute("user", user);
		
		return "/user/myPage/myPage";
	}
	
	// 비밀번호 변경 클릭시
	@GetMapping("/user/myPage/changePw")
	public String changePW(HttpServletRequest req, Model model) {
		String sort = "changePw";
		String userNonUser = "user";
		
		model.addAttribute("sort", sort);
		model.addAttribute("userNonUser", userNonUser);
		
		return "/user/myPage/changePw";
	}
	@PostMapping("/user/myPage/changePw")
	public String changePW(String user_pw, String user_pw_new, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		if(user.getUser_pw().equals(user_pw)) {
			user.setUser_pw(user_pw_new);
			userService.updatePW(user);
			
			return "redirect:/user/myPage";
		}else {
			// alert 현재 비밀번호가 틀렸습니다.
			return "redirect:/user/myPage/changePw";
		}
		
	}
	
	@RequestMapping("/user/myPage/wishList")
	public String wishList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		
		List<WishVo> wishList = userService.selectWish(user);
		String sort = "wishList";
		String userNonUser = "user";
		
		model.addAttribute("sort", sort);
		model.addAttribute("userNonUser", userNonUser);
		model.addAttribute("wishList", wishList);
		
		return "/user/myPage/wishList";
	}
	@RequestMapping("/user/myPage/wishList/delete")
	public String wishListDelete(String wish_no) {
		userService.deleteWish(wish_no);
		
		return "redirect:/user/myPage/wishList";
	}
	@RequestMapping("/user/myPage/wishList/addWish")
	public String addWish(String goods_no, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		
		WishVo wish = new WishVo();
		wish.setWish_goods_no(Integer.parseInt(goods_no));
		wish.setWish_id(user.getUser_id());
		
		userService.insertWish(wish);
		
		return "redirect:/goods/travelPackage?goods_no="+goods_no;
	}
	
	
	
	
	
	
	
	
	
	
	
}
