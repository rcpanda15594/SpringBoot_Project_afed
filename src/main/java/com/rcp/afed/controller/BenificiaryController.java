package com.rcp.afed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BenificiaryController {
	
	@GetMapping("/getBank.htm")
	public String getBank(){
		return "bankAccPage";
		
	}

}
