package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DemoController {

	@RequestMapping(value = "/", method = RequestMethod.GET )
	public String homePage() {
		
		return "home";
	}
	
	@RequestMapping(value = "/leaders", method = RequestMethod.GET )
	public String leadersPage() {
		
		return "leaders";
	}
	
	@RequestMapping(value = "/systems", method = RequestMethod.GET )
	public String adminPage() {
		
		return "systems";
	}
}
