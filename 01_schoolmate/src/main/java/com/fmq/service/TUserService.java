package com.fmq.service;

import com.fmq.pojo.TUser;

public interface TUserService {
	
	//用户注册
	void regist(TUser user);
	
	// 用户登录
	TUser login(String userName,String userPassword);

}
