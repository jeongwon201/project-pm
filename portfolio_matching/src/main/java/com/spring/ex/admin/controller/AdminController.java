package com.spring.ex.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.member.domain.MemberVO;
import com.spring.ex.member.service.MemberService;

@Controller
public class AdminController {
<<<<<<< HEAD
	
	@Inject
	MemberService service;
	
	@RequestMapping(value = "aindex.do", method = RequestMethod.GET)
=======
	@RequestMapping(value = "adminIndex.do", method = RequestMethod.GET)
>>>>>>> branch 'jeongwon' of https://github.com/junhamin/portfolio_matching.git
	public String index() throws Exception {

		return "admin/aindex";
	}
	
	@RequestMapping(value = "adminMember.do", method = RequestMethod.GET)
	public String adminMember(Model model) throws Exception {
		model.addAttribute("mlist", service.view());
		return "admin/member";
	}
	
	@RequestMapping(value = "adminReview.do", method = RequestMethod.GET)
	public String adminReview() throws Exception {

		return "admin/review";
	}
	
	@RequestMapping(value = "adminPur.do", method = RequestMethod.GET)
	public String adminPur() throws Exception {

		return "admin/pur";
	}
	
	@RequestMapping(value = "adminSale.do", method = RequestMethod.GET)
	public String sale() throws Exception {

		return "admin/sale";
	}
	
	@RequestMapping(value = "adminStat.do", method = RequestMethod.GET)
	public String stat() throws Exception {

		return "admin/stat";
	}
	
}
