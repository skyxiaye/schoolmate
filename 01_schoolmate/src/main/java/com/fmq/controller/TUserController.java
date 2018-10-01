package com.fmq.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fmq.pojo.TUser;
import com.fmq.service.TUserService;

@Controller
@RequestMapping("/user")
public class TUserController {
	
	@Autowired(required=true)
	private TUserService userService;
	
	//	跳转至regist.jsp
	@RequestMapping("goregist")
	public String goRegist(){
		return "regist";
	}
	//跳转至login.jsp
	@RequestMapping("gologin")
	public String goLogin(){
		return "login";
	}
	//处理用户登录
	@RequestMapping("login")
	public String userLogin(TUser user,HttpServletRequest request,HttpServletResponse response){
		user = userService.login(user.getUserName(),user.getUserPassword());
		if(user!=null){
			HttpSession session = request.getSession();
			session.setAttribute("userName", user.getUserName());
		return "redirect:/use/main";
		}else{
			return "loginfail";
		}
	}
	//处理用户注册
	@RequestMapping("regist")
	public String userRegister(TUser user){
		userService.regist(user);
		return "registsuccess";
	}
	//处理用户退出登录
	@RequestMapping("outlogin")
	public String outLogin(HttpServletRequest request,HttpServletResponse response){
		HttpSession session = request.getSession();
		session.removeAttribute("userName");
		return "redirect:/use/main";
	}
	

}
