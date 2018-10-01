package com.fmq.service;

import java.util.List;

import com.fmq.pojo.TInfo;

public interface TInfoService {
	//查询所有t_info中的所有数据
	List<TInfo> findAll();
	//插入失物招领发布信息
	int insert(TInfo record);

}
