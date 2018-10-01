package com.fmq.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fmq.dao.TInfoMapper;
import com.fmq.pojo.TInfo;
import com.fmq.service.TInfoService;
@Service
public class TInfoServiceImpl implements TInfoService {

	@Autowired
	private TInfoMapper infoMapper;
	@Override
	public List<TInfo> findAll() {
		return infoMapper.findAll();
	}
	@Override
	public int insert(TInfo record) {
		infoMapper.insert(record);
		return 0;
	}

}
