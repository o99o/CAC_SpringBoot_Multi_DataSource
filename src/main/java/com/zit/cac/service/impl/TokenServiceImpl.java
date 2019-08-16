package com.zit.cac.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zit.cac.dao.TokenDao;
import com.zit.cac.service.TokenService;

/**
 *@author: wangq
 *@date: 2015-8-15上午09:03:56
 *@version:
 *@description：
 */
@Service("tokenService")
public class TokenServiceImpl<T> implements TokenService<T>{
	
	@Autowired
	private TokenDao<T> dao;

	@Override
	public void insertToken(T t) {
		dao.insertToken(t);
	}

	@Override
	@SuppressWarnings("unchecked")
	public T findOneToken(Map map) {
		return dao.findOneToken(map);
	}

}
