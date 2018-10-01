package com.fmq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fmq.pojo.TInfo;
import com.fmq.service.TInfoService;

@Controller
public class TInfoController {
	
	
	@Autowired
	private TInfoService infoService;
	
	@RequestMapping("show/info")
	@ResponseBody
	public String showInfo(HttpServletRequest request,HttpServletResponse response,Mode modle){
		ObjectMapper objectMapper = new ObjectMapper();
		List<TInfo> list = infoService.findAll();
		String rs= null;
		try {
			 rs = objectMapper.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return rs;
	}
	@RequestMapping("insert/info")
	public String insertInfo(HttpServletRequest request,HttpServletResponse response,@Param("userInfo")String userInfo){
		String userName = (String) request.getSession().getAttribute("userName");
		TInfo info = new TInfo();
		info.setUserName(userName);
		info.setUserInfo(userInfo);
		infoService.insert(info);
		return "redirect:/use/main";
	}

}
