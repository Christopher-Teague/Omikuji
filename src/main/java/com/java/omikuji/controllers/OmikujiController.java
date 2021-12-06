package com.java.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
//	@RequestMapping("")
	@GetMapping("/omikuji")
	public String form() {
		return "form.jsp";
	}
	
	@PostMapping("/processForm")
	public String processForm(HttpSession session,
		@RequestParam("years") Integer years,
		@RequestParam("city") String city,
		@RequestParam("name") String name,
		@RequestParam("hobby") String hobby,
		@RequestParam("livingThing") String livingThing,
		@RequestParam("saySomething") String saySomething
		){
	
	session.setAttribute("years", years);
	session.setAttribute("city", city);
	session.setAttribute("name", name);
	session.setAttribute("hobby", hobby);
	session.setAttribute("livingThing", livingThing);
	session.setAttribute("saySomething", saySomething);
	
	return "redirect:/show";
	}	
	
	@GetMapping("/show")
	public String show() {
		return "show.jsp";
	}
}
