package com.sebinlee.portfolio.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioCtrl {
	@RequestMapping("/")
	public String index() {
		return "portfolio/index.jsp";
	}
	
	
}
