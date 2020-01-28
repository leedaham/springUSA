package kr.co.knockusa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroduceController {
	
	@RequestMapping(value= {"/introduce/introduce", "/introduce"})
	public String introduce() {
		return "/introduce/introduce";
	}
	@RequestMapping("/introduce/why")
	public String why() {
		return "/introduce/why";
	}
	@RequestMapping("/introduce/direction")
	public String direction() {
		return "/introduce/direction";
	}
}	
