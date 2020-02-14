package kr.co.knockusa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroduceController {
	
	@RequestMapping(value= {"/introduce/introduce", "/introduce"})
	public String introduce(Model model) {
		String sort = "introduce";
		model.addAttribute("sort", sort);
		return "/introduce/introduce";
	}
	@RequestMapping("/introduce/why")
	public String why(Model model) {
		String sort = "why";
		model.addAttribute("sort", sort);
		return "/introduce/why";
	}
	@RequestMapping("/introduce/direction")
	public String direction(Model model) {
		String sort = "direction";
		model.addAttribute("sort", sort);
		return "/introduce/direction";
	}
}	
