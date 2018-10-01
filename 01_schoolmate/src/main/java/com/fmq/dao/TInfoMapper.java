package com.fmq.dao;

import com.fmq.pojo.TInfo;
import com.fmq.pojo.TInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TInfoMapper {
    int countByExample(TInfoExample example);

    int deleteByExample(TInfoExample example);

    int deleteByPrimaryKey(Integer infoId);

    int insert(TInfo record);

    int insertSelective(TInfo record);

    List<TInfo> selectByExample(TInfoExample example);
    //查询所有动态
    List<TInfo> findAll();

    TInfo selectByPrimaryKey(Integer infoId);

    int updateByExampleSelective(@Param("record") TInfo record, @Param("example") TInfoExample example);

    int updateByExample(@Param("record") TInfo record, @Param("example") TInfoExample example);

    int updateByPrimaryKeySelective(TInfo record);

    int updateByPrimaryKey(TInfo record);
}