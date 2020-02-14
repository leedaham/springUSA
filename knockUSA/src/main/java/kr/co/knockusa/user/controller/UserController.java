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
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.PurchaseVo;

@Controller
public class UserController {

	@Inject
	private PurchaseService service;
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
			
			model.addAttribute("purchaseList", purchaseList);
			return "/user/myPage/reservationList";
						
		}
	}
	@RequestMapping("/user/ByReservationList")
	public String reservationAlreadyLogin(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		
		String purchase_id = user.getUser_id();
		List<PurchaseVo> purchaseList = service.selectPurchasesUser(purchase_id);
		
		model.addAttribute("purchaseList", purchaseList);
		return "/user/myPage/reservationList";
		
		
	}
}
