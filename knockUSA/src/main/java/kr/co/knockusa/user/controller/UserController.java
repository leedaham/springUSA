package kr.co.knockusa.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/user/myPage/reserList")
	public String reserveList() {
		
		return "/user/myPage/reserList";
	}
}
