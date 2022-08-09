package com.jc.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index(){
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String form() {
		return "form.jsp";
	}
	
	@PostMapping("/omikuji")
	public String process(
			//this is pulling from the form and storing them in variables.
			@RequestParam("number")String number,
			@RequestParam("city")String city,
			@RequestParam("person")String person,
			@RequestParam("hobby")String hobby,
			@RequestParam("noun")String noun,
			@RequestParam("nice")String nice, HttpSession session){
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("noun", noun);
		session.setAttribute("nice", nice);
		return "redirect:/omikuji/show";
	}
	//pull values from session
	//add values into the model
	@GetMapping("/omikuji/show")
	public String show(Model model, HttpSession session) {
		// Model is sending the data to the jsp file.
		model.addAttribute("number", session.getAttribute("number"));
		model.addAttribute("city", session.getAttribute("city"));
		model.addAttribute("person", session.getAttribute("person"));
		model.addAttribute("hobby", session.getAttribute("hobby"));
		model.addAttribute("noun", session.getAttribute("noun"));
		model.addAttribute("nice", session.getAttribute("nice"));
		return "show.jsp";
	}
	
	
	
}
