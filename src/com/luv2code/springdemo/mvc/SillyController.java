package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SillyController {
	
	@RequestMapping("/showForm") //This would only be called if we linked to localhost:8080/showForm (But now we link to localhost:8080/hello/showForm)
	public String displayTheForm() {
		return "silly"; //Doesn't return anything because we have no silly.jsp
	}

}
