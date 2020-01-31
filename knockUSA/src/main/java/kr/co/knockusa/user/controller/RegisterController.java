package kr.co.knockusa.user.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.knockusa.register.service.RegisterService;
import kr.co.knockusa.vo.TermsVo;
import kr.co.knockusa.vo.UserVo;

@Controller
public class RegisterController {
	@Inject
	private RegisterService service;
	
	@GetMapping("/user/register")
	public String register1(Model model) {
		TermsVo terms = service.selectTerms();
		model.addAttribute("terms", terms);
		
		return "/user/registerStep1";
	}
	
	@PostMapping("/user/register2")
	public String register2() {
		
		return "/user/registerStep2";
	}
	@RequestMapping("/user/register3")
	public String register3(UserVo vo, HttpServletRequest req) {
		String regip = req.getRemoteAddr();
		String email = req.getParameter("email1") + req.getParameter("email2");
		String tel = req.getParameter("tel1") + req.getParameter("tel2") + req.getParameter("tel3");
		String checkGender = req.getParameter("gender");
		String checkSms = req.getParameter("agreeSms");
		String checkEmail = req.getParameter("agreeEmail");

		int gender = Integer.parseInt(checkGender);
		int agreeSms = Integer.parseInt(checkSms);
		int agreeEmail = Integer.parseInt(checkEmail);
				
		vo.setUser_regip(regip);
		vo.setUser_email(email);
		vo.setUser_tel(tel);
		vo.setUser_gender(gender);
		vo.setUser_agree_sms(agreeSms);
		vo.setUser_agree_email(agreeEmail);
		
		service.insertUser(vo);
				
		return "/user/registerStep3";
	}
	
	
	// 가입 중복확인
		//아이디 중복
	@GetMapping(value="/api/checkid", produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String checkId(String user_id) {
		
		int checkId = service.checkId(user_id);
		
		return new Gson().toJson(checkId);
	}
		//휴대폰 중복
	@GetMapping(value="/api/checkhp", produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String checkHp(String user_hp) {
		
		int checkhp = service.checkHp(user_hp);
		
		return new Gson().toJson(checkhp);
	}
	
	
//	@RequestMapping("/user/register3")
//	public String registerEnd() {
//		return "/user/registerStep3";
//	}
}
