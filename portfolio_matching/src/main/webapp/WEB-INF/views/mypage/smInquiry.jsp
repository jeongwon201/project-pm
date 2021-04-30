<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../include/style_css.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>

<body class="body-wrapper">

  <!--==================================
=            User Profile            =
===================================-->
  <div class="col-md-12">
    <div class="widget dashboard-container">
      <h3 class="widget-header text-center">문의 게시판</h3>

      <ol>
        <li>
          <div>
            <i class="fa fa-question-circle-o"></i>김영우님 | 2021-04-17
          </div>
          <div>기능 추가가 가능할까요?</div>
          <hr />
        </li>
        <li><textarea name="message" id="" placeholder="답변을 입력해주세요." class="border w-100 p-3 mt-3 mt-lg-4"></textarea>
          <div class="btn-grounp text-right">
            <button type="submit" class="btn btn-primary mt-2">답변 하기</button>
          </div>
          <hr /></li>

        <li>
          <div>
            <i class="fa fa-question-circle-o"></i>정다윤님 | 2021-04-16
          </div>
          <div>환불하고 싶어요~</div>
          <hr />
        </li>
        <li><textarea name="message" id="" placeholder="답변을 입력해주세요." class="border w-100 p-3 mt-3 mt-lg-4"></textarea>
          <div class="btn-grounp text-right">
            <button type="submit" class="btn btn-primary mt-2">답변 하기</button>
          </div>
          <hr /></li>
        <li>
          <div>
            <i class="fa fa-question-circle-o"></i>정하민님 | 2021-04-15
          </div>
          <div>프로젝트가 언제쯤 완료될까요?</div>
          <hr />
        </li>
        <li>
          <div>
            <i class="fa fa-commenting"></i>판매자 | 2021-04-16
          </div>
          <div>내일 완료 예정입니다~</div>
          <hr />
        </li>
      </ol>

    </div>
  </div>


  <%@ include file="../../include/style_js.jsp"%>
</body>

</html>