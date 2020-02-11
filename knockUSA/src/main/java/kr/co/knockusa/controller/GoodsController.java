package kr.co.knockusa.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.knockusa.service.GoodsService;
import kr.co.knockusa.vo.GoodsDetailVo;
import kr.co.knockusa.vo.GoodsVo;

@Controller
public class GoodsController {
	@Inject
	private GoodsService service;
	
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
