package com.zit.cac.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zit.cac.dao.RoleDao;
import com.zit.cac.service.RoleService;

/**
 *@author: wangq
 *@date: 2015-5-18下午04:57:50
 *@version:
 *@description：
 */
@Service("roleService")
public class RoleServiceImpl<T> implements RoleService<T>{

	@Autowired
	private RoleDao<T> dao;
	
	@Override
	public void addRole(T t) throws Exception {
		dao.addRole(t);
	}

	@Override
	public int countRole(T t) throws Exception {
		return dao.countRole(t);
	}

	@Override
	public void deleteRole(Long roleId) throws Exception {
		dao.deleteRole(roleId);
	}

	@Override
	public T findOneRole(Long roleId) throws Exception {
		return dao.findOneRole(roleId);
	}

	@Override
	public List<T> findRole(T t) throws Exception {
		return dao.findRole(t);
	}

	@Override
	public void updateRole(T t) throws Exception {
		dao.updateRole(t);
	}

	@Override
	public T existRoleWithRoleName(String roleName) throws Exception {
		return dao.existRoleWithRoleName(roleName);
	}

	@Override
	@SuppressWarnings("unchecked")
	public void deleteRoleByRoleIds(Map map) throws Exception {
		dao.deleteRoleByRoleIds(map);
	}

}
