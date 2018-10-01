package com.fmq.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/use")
public class MainController {
	//跳转至项目首页
	@RequestMapping("/main")
    public String useMain(){
		return "main";
	}
	//跳转至test页面
	@RequestMapping("/test")
	public String useTest(){
		return "test";
	}

}
