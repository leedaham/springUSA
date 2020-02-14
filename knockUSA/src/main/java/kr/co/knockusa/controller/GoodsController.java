package kr.co.knockusa.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.knockusa.service.GoodsService;
import kr.co.knockusa.service.PurchaseService;
import kr.co.knockusa.user.vo.UserVo;
import kr.co.knockusa.vo.GoodsDetailVo;
import kr.co.knockusa.vo.GoodsVo;
import kr.co.knockusa.vo.PurchaseVo;

@Controller
public class GoodsController {
	@Inject
	private GoodsService service;
	@Inject
	private PurchaseService purchaseService;
	
	@RequestMapping(value= {"/goods", "/goods/travelPackages"})
	public String goodsList(String where, String side, Model model) {
		
		GoodsVo page = new GoodsVo();
		page.setGoods_country(where);
		page.setGoods_side(side);
		
		List<GoodsVo> packages = service.selectPackages(where, side);
		
		model.addAttribute("packages", packages);
		model.addAttribute("page", page);
		return "/goods/goods_list";
	}
	@RequestMapping("/goods/travelPackage")
	public String goods(int goods_no, Model model) {
		
		GoodsVo goods = service.selectPackage(goods_no);
		List<GoodsDetailVo> detail = service.selectGoodsDetail(goods_no);
		
		model.addAttribute("goods", goods);
		model.addAttribute("detail", detail);
		
		return "/goods/goods_view";
	}
	@RequestMapping("/goods/monthlyStart")
	public String monthly() {
		return "/goods/goods_monthly";
	}
	
	
	// 예약하기
	@GetMapping("/goods/reservation")
	public String reservation(String goods_no, HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserVo user = (UserVo)session.getAttribute("user");
		
		int goods_number = Integer.parseInt(goods_no);
		GoodsVo goods = service.selectPackage(goods_number);
		
		req.setAttribute("user", user);
		req.setAttribute("goods", goods);
		
		return "/goods/goods_reservation";
	}
	// 예약하기 프로세스 - 예약 후 예약확인페이지로
	@PostMapping("/goods/reservation")
	public String reservation(PurchaseVo vo, int goods_price, HttpServletRequest req) {
		vo.setPurchase_price(vo.getPurchase_how_many()*goods_price); 
		vo.setPurchase_regip(req.getRemoteAddr());
		vo.setPurchase_goods_status(0);
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "HHmmssyyMMdd");
		Date time = new Date();
		String time1 = format1.format(time);
		vo.setPurchase_no(time1+vo.getPurchase_name_eng());
		if(vo.getPurchase_id().equals("")) {
			vo.setPurchase_id(vo.getPurchase_no()+"100");
		}
		purchaseService.insertPurchase(vo);
		service.updateGoodsPeople(vo);
		String purchase_no = vo.getPurchase_no();
		String purchase_name = vo.getPurchase_name_eng();

		return "redirect:/goods/resersvationSuccess?purchase_no="+purchase_no+"&purchase_name="+purchase_name;

	}
	// 예약 성공
	@RequestMapping(value="/goods/resersvationSuccess", produces="text/plain;charset=UTF-8")
	public String resersvationSuccess(HttpServletRequest req, String purchase_no, String purchase_name, Model model) {
		PurchaseVo purchase = new PurchaseVo();
		purchase.setPurchase_no(purchase_no);
		purchase.setPurchase_name_eng(purchase_name);
		
		model.addAttribute("purchase", purchase);
		
		return "/goods/goods_resersvationSuccess";
	}
	//예약 삭제
	@RequestMapping("/goods/reservation/cancle")
	public String reservationCancle(PurchaseVo vo) {
		purchaseService.deletePurchase(vo);
		service.updateGoodsPeopleDown(vo);
		
		return "redirect:/home";
	}
	
	// home 지역별 여행보기
	@RequestMapping("/goods/packagesByRegion")
	public String LosAngeles(String goods_region, Model model) {
		
		List<GoodsVo> packages = service.selectByRegion(goods_region);
		
		model.addAttribute("packages", packages);
		
		return "/goods/goods_list";
	}
	
	
	// API
	@GetMapping(value="/goods/api/month", produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String apiGoodsMonthly(String startMonth, String goods_region) {
		GoodsVo vo = new GoodsVo();
		vo.setGoods_start(startMonth);
		vo.setGoods_region(goods_region);
		
		List<GoodsVo> goods = service.selectGoodsMonthly(vo);
		return new Gson().toJson(goods);
	}
	
	@GetMapping(value="/goods/api/monthly", produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String apiGoodsMonthly(String startMonth) {
		
		List<GoodsVo> goods = service.selectGoodsMonthly(startMonth);
		return new Gson().toJson(goods);
	}
}
