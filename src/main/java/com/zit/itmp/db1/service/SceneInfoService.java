package com.zit.itmp.db1.service;

import com.zit.itmp.db1.entity.SceneInfo;

/**
 *@author: LiJiangtao
 *@date: 2019-8-16上午17:39:00
 *@version:
 *@description：
 */
public interface SceneInfoService {
	int deleteByPrimaryKey(Long id);

    int insert(SceneInfo record);

    int insertSelective(SceneInfo record);

    SceneInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SceneInfo record);

    int updateByPrimaryKey(SceneInfo record);
}
