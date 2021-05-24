package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MyPageDAO;
import com.spring.ex.vo.AnswerVO;
import com.spring.ex.vo.Deal_PortVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.Deal_Port_InqVO;
import com.spring.ex.vo.PortfolioVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	@Inject
	MyPageDAO dao;

	@Override // 구매 내역
	public List<Deal_PortVO> pmPurchaseList(String user_id) throws Exception {
		return dao.pmPurchaseList(user_id);
	}

	@Override // 구매 내역 - 구매 확정 기능
	public void pmPurchaseConfirm(String deal_id) throws Exception {
		dao.pmPurchaseConfirm(deal_id);
	}

	@Override // 문의 내역
	public List<Deal_Port_InqVO> pmInquiryList(String user_id) throws Exception {
		return dao.pmInquiryList(user_id);
	}

	@Override // 문의 내역 - 작성 기능
	public void pmInquiryWrite(InquiryVO inquiryVO) throws Exception {
		dao.pmInquiryWrite(inquiryVO);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능1
	public InquiryVO pmInquiryRead(int inq_id) throws Exception {
		return dao.pmInquiryRead(inq_id);
	}

	@Override // 문의 내역(구매) - 답변 읽기 기능 2
	public AnswerVO pmAnswerRead(int inq_id) throws Exception {
		return dao.pmAnswerRead(inq_id);
	}

	@Override // 판매중
	public List<PortfolioVO> smSaleList(String user_id) throws Exception {
		return dao.smSaleList(user_id);
	}

	@Override // 문의 내역(판매)
	public List<Deal_Port_InqVO> smInquiryList(String user_id) throws Exception {
		return dao.smInquiryList(user_id);
	}

	@Override // 문의 내역(판매) - 답변 하기
	public InquiryVO smInquiryRead(int inq_id) throws Exception {
		return dao.smInquiryRead(inq_id);
	}

	@Override // 문의 내역(판매) - 답변 하기 기능
	public void smAnswerWrite(AnswerVO answerVO) throws Exception {
		dao.smAnswerWrite(answerVO);
	}

	@Override // 내 정보 수정 - 수정 기능
	public void userUpdate(MemberVO vo) throws Exception {
		dao.userUpdate(vo);
	}

	@Override // 내 정보 수정 - 비밀번호 수정 기능
	public void userPwUpdate(MemberVO vo) throws Exception {
		dao.userPwUpdate(vo);
	}

	@Override // 회원 탈퇴 - 탈퇴 기능
	public void userDelete(MemberVO vo) throws Exception {
		dao.userDelete(vo);
	}
}