package com.myclass.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

//	@Autowired
//	SessionFactory sessionFactory;

	@GetMapping("home")
	public String index() {	

		 return "home";
	}
	@GetMapping("video")
	public String video() {		
		 return "video";
	}
	@GetMapping("course")
	public String course() {		
		 return "course";
	}
}
