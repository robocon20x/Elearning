package com.myclass.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myclass.entity.Account;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	SessionFactory sessionFactory;

	@GetMapping("home")
	@Transactional
	public String index() {

		Session session = sessionFactory.openSession();
		try {

			List<Account> list = session.createQuery("from loginaccount").list();
			for (Account item : list) {
				System.out.println(item.getUsername());

			}

		} catch (Exception e) {
			e.printStackTrace();
		} 
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
