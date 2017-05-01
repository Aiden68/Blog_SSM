package cn.andone.controller;

import cn.andone.dao.AdminDao;
import cn.andone.model.Admin;
import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by JLL on 2017/4/27.
 */
@Controller
public class LoginController {

    @Autowired
    AdminDao adminDao;

    //游客登录
    @RequestMapping("backAnonymous")
    public String anonymousLogin(){
        return "redirect:backIndex";
    }

    @RequestMapping("login")
    public String login_view(){
        return "forward:/WEB-INF/template/back/login.jsp";
    }

    @RequestMapping("loginbypwd")
    public String login_view(HttpServletRequest request, String username, String password){
        System.out.println(username + ": " + password);
        Admin admin = adminDao.getAdminByNameAndPwd(username, password);
        HttpSession session = request.getSession();
        if(admin != null){
            session.setAttribute("username", admin.getUsername());
            return "redirect:backIndex";
        }
        return "redirect:/WEB-INF/template/back/login.jsp";
    }
}
