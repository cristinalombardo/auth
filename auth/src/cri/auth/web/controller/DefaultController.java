package cri.auth.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cri.auth.buisness.BusinessInterface;

@Controller
public class DefaultController {
	
	@Autowired
	private BusinessInterface businessInterface;
	
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
	
	@RequestMapping(method = RequestMethod.GET, value="/sec/sec.html")
	public String showSec (){
		return "sec/sec";
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/sec/sec.html")
	public ModelAndView adminAction (@RequestParam(value="ping") String pingMessage){
		ModelAndView mav = new ModelAndView("sec/sec");
		String result=null;
		try{
			result = businessInterface.adminOperatio(pingMessage);
		}catch(Exception e){
			result = "Can't perform admin operation: " + e.getMessage() + ". Ping Param: " + pingMessage; 
		}
		mav.addObject("aresult", result);
		return mav;
	}

	@RequestMapping(value="/sec/admin/admin.html")
	public String showAdmin (){
		return "sec/admin/admin";
	}
}
