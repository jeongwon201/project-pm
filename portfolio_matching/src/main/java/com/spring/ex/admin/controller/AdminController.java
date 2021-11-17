package com.spring.ex.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.spring.ex.admin.service.AdminService;
import com.spring.ex.member.service.MemberService;

@Controller
public class AdminController {

	@Autowired
	MemberService service;

	@Autowired
	AdminService aservice;

	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview(Model model) throws Exception {
		model.addAttribute("reviewlist", aservice.reviewlist());
		return "admin/review";
	}

}
