package com.rcp.afed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/login")
	public String getLogin(){
		return "login.index";
	}

	@GetMapping(value={"/"})
	public String getWelcome(){
		
		return "admin.dashboard";
	}
	
}
