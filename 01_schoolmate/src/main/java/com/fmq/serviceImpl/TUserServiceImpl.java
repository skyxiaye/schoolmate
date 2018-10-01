package com.fmq.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fmq.dao.TUserMapper;
import com.fmq.pojo.TUser;
import com.fmq.service.TUserService;

@Service
public class TUserServiceImpl implements TUserService {

	@Autowired
	TUserMapper userMapper;
	@Override
	public void regist(TUser user) {
		userMapper.insert(user);
	}

	@Override
	public TUser login(String userName,String userPassword) {
		TUser user = userMapper.findUserByUserName(userName);
		if(user!=null && user.getUserPassword().equals(userPassword)){
			return user;
		}else{
			return null;
		}
	}

}
