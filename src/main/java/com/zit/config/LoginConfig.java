package com.zit.config;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginConfig{
	static Logger logger = LogManager.getLogger(LoginConfig.class);
	
	@RequestMapping("/")
	public String index() {
		return "../../login";
	}

}
