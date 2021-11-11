package com.spring.ex.admin.repository;

import java.util.List;

import com.spring.ex.portfolio.domain.CategoryMainVO;
import com.spring.ex.portfolio.domain.CategorySubVO;
import com.spring.ex.portfolio.domain.PortRegVO;

public interface AdminPortfolioDAO {
	
	public List<PortRegVO> portfolioList() throws Exception;
	public CategoryMainVO categoryMainGetOne(int id) throws Exception;
	public CategorySubVO categorySubGetOne(int id) throws Exception;
}
