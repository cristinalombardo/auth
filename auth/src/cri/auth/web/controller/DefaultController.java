package cri.auth.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	@RequestMapping(value="/home.html")
	public String showView (){
		return "home";
	}
	
	@RequestMapping(value="/login.html")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping(value="/403.html")
	public String showAccessDenied(){
		return "403";
	}
	
	@RequestMapping(value="/sec/sec.html")
	public String showSec (){
		return "sec/sec";
	}

	@RequestMapping(value="/sec/admin/admin.html")
	public String showAdmin (){
		return "sec/admin/admin";
	}
}
