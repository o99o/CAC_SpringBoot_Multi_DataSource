package com.zit.itmp.db1.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zit.itmp.db1.dao.SceneInfoMapper;
import com.zit.itmp.db1.entity.SceneInfo;
import com.zit.itmp.db1.service.SceneInfoService;

/**
 *@author: LiJiangtao
 *@date: 2019-8-16上午17:39:00
 *@version:
 */
@Service("sceneInfoService")
public class SceneInfoServiceImpl implements SceneInfoService{

	@Autowired
	private SceneInfoMapper dao;
	
	@Transactional(value = "db1TransactionManager")
	@Override
	public int deleteByPrimaryKey(Long id) {
		int res = dao.deleteByPrimaryKey(id);
		return res;
	}

	@Transactional(value = "db1TransactionManager")
	@Override
	public int insert(SceneInfo record) {
		int res = dao.insert(record);
		return res;
	}

	@Transactional(value = "db1TransactionManager")
	@Override
	public int insertSelective(SceneInfo record) {
		int res = dao.insertSelective(record);
		return res;
	}

	@Transactional(value = "db1TransactionManager")
	@Override
	public SceneInfo selectByPrimaryKey(Long id) {
		SceneInfo res = dao.selectByPrimaryKey(id);
		return res;
	}

	@Transactional(value = "db1TransactionManager")
	@Override
	public int updateByPrimaryKeySelective(SceneInfo record) {
		int res = dao.updateByPrimaryKey(record);
		return res;
	}

	@Transactional(value = "db1TransactionManager")
	@Override
	public int updateByPrimaryKey(SceneInfo record) {
		int res = dao.updateByPrimaryKey(record);
		return res;
	}
	
}
