package cn.andone.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.andone.pojo.Admin;
import cn.andone.service.AdminService;

@Controller
public class LoginController {

	@Autowired
	private AdminService adminService;
	
	@RequestMapping("login")
	public String login(){
		return "backLogin";
	}
	
	@RequestMapping("adminlogin")
	public String adminLogin(HttpServletRequest request, String username, String pwd){
		Admin admin = adminService.adminLogin(username, pwd);
		HttpSession session = request.getSession();
		if(admin != null && admin.getUsername() != null){
			session.setAttribute("username", admin.getUsername());
			System.out.println(admin.getUsername());
			return "backIndex";
		}
		return "backLogin";
	}
	
	@RequestMapping("logout")
	public String logOut(HttpSession session){
		session.invalidate();  
        
        return "redirect:login";  
	}
}
