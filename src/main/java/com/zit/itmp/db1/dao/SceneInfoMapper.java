package com.zit.itmp.db1.dao;

import com.zit.itmp.db1.entity.SceneInfo;

public interface SceneInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SceneInfo record);

    int insertSelective(SceneInfo record);

    SceneInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SceneInfo record);

    int updateByPrimaryKey(SceneInfo record);
}