package com.zit.itmp.db1.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.zit.itmp.db1.entity.SceneInfo;
import com.zit.itmp.db1.service.SceneInfoService;

@Controller
@RequestMapping("webservice")
public class Db1TestController {
	static Logger logger = LogManager.getLogger(Db1TestController.class);
	
	@Autowired
	private SceneInfoService sceneInfoService;
	
	@RequestMapping("test111")
	@ResponseBody
	public String index(){
		SceneInfo sceneInfo = sceneInfoService.selectByPrimaryKey(1L);
		String res = JSONObject.toJSONString(sceneInfo);
		return res;
	}
}
