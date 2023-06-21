# project-pm | 포트폴리오 매칭
사용자 간 포트폴리오 거래를 목적으로 제작된 전자상거래 웹 애플리케이션입니다.  

사용자는 포트폴리오를 구매할 수 있으며, 동시에 판매할 수 있습니다.  
<br />
<br />

## 프로젝트 배경 및 과정
프로젝트 기간은 설계부터 구현까지 6개월(두 학기) 입니다.  

본인 포함 네 명의 팀원이 생각한 서로 다른 의견을 종합한 결과로  
포트폴리오를 거래하는 E-Commerce 웹 애플리이션을 주제로 선정하였습니다.   

프로젝트에서 모든 팀원이 설계와 구현을 같이 수행하였으며,  
저는 팀원 간 의견 조율과 업무 배분을 담당하였습니다.  

프로젝트 구현 전 각 팀원이 원하는 업무와 개인 능력을 파악하여 업무를 배분하였습니다.  

저는 마이페이지 서비스, 리뷰 서비스, 문의 서비스, 관리자 서비스의 포트폴리오 관리 서비스를 담당하였습니다.  
위 4개 서비스의 모든 UI 및 기능을 구현하였고,  
그 외 메인 페이지의 실시간 트렌드 기능, 카테고리 UI, 포트폴리오 검색 기능을 구현하였습니다.  

마이페이지 서비스를 구현하면서 포트폴리오 구매, 결제 서비스와 공유되는 부분이 있다는 것을  
설계 단계에서 인지하지 못하고 결제 API 에 대한 지식이 없어 구매 및 판매 관리 구현에 어려움이 있었습니다.  
해당 부분을 담당했던 팀원과 커뮤니케이션 후 코드 분석 및 결제 API 스터디를 통해 해당 부분을 해결하였습니다.  
<br />
<br />

## 프로젝트 기능
이번 프로젝트에서 사용된 기술 스택은 다음과 같습니다.  
> Language - JAVA 1.8  
> UI - JSP, JavaScript, CSS, BootStrap  
> Framework - Spring Framework 5.0.7, Mybatis 3  
> Library - JSTL, JQuery  
> API - 카카오 결제 API  
> Database - MariaDB  
> IDE - Eclipse  
> Build - Maven  
> VC - Git
<br />

다음은 프로젝트의 주요 기능에 대한 이미지 및 설명입니다.  
<br />

### 메인
![portgit메인](https://user-images.githubusercontent.com/80952596/145715130-9482dbd0-6399-412e-8eed-e03eda8a5c9f.PNG)

상단 헤더에서 ```포트폴리오``` 를 통해 포트폴리오를 찾아보거나,  
```등록하기``` 를 통해 판매할 포트폴리오를 등록할 수 있습니다.  

중앙의 검색바를 통해 포트폴리오를 검색할 수 있습니다.  
<br />

#### 실시간 트렌드
![s실시간트렌드](https://user-images.githubusercontent.com/80952596/146004432-e54ab9b0-6b31-4f65-a6e8-8efb825a6bac.PNG)

메인 페이지의 실시간 트렌드는 판매 실적이 우수한 포트폴리오를 노출합니다.  
<br />
<br />

### 포트폴리오
상단 헤더의 ```포트폴리오``` 를 통해 이용 가능합니다.  
<br />

#### 포트폴리오 목록
<!-- ![portgit포트폴리오](https://user-images.githubusercontent.com/80952596/145715442-f87ca2d6-18c1-4b53-9f7a-8dd9f06d062a.PNG) <br><br> -->
![p영상_포폴리스트](https://user-images.githubusercontent.com/80952596/146004614-5a6f2b60-2cd2-45e1-8b4d-6f7ecfb73718.gif)

카테고리 별로 등록된 포트폴리오의 목록을 노출합니다.  

> 카테고리는 큰 카테고리와 작은 카테고리로 구성됩니다.  
> 
> 예시)  
> IT 프로그래밍 > 보안  
> IT 프로그래밍 > 서버  
> 마케팅/홍보   > 텔레마케팅
<br />

#### 포트폴리오 검색
![p영상_포폴검색](https://user-images.githubusercontent.com/80952596/146004647-09bac980-6dc1-4fde-826c-812dc0fbef48.gif)

포트폴리오 목록 상단의 검색바로 카테고리 별 포트폴리오 검색이 가능합니다.  
<br />

#### 포트폴리오 등록
상단 헤더의 ```등록하기``` 를 통해 이용 가능합니다.  

![portgit등록하기](https://user-images.githubusercontent.com/80952596/145715538-951b1f25-905e-4e76-acfd-be18ccbba7fb.PNG)

요구되는 여러 정보를 입력하여 판매할 포트폴리오를 등록할 수 있습니다.  
<br>
<br>

### 마이페이지
우측 상단의 본인 아이디을 클릭하여 마이페이지에 접근할 수 있습니다.  
<br />

#### 내 정보 관리
내 정보 수정과 회원 탈퇴 항목이 있습니다.  

![portgit마이페이지](https://user-images.githubusercontent.com/80952596/145715547-13720924-132b-4f79-9cfa-3574794bccce.PNG)

내 정보(이름, 연락처, 이메일)와 비밀번호를 변경할 수 있습니다.  
<br />
<br />

#### 판매 관리
판매 중인 포트폴리오를 확인할 수 있는 ```판매중```,  
현재까지 창출한 수익을 확인할 수 있는 ```수익 현황```,  
판매 중인 포트폴리오에 남겨진 문의를 관리할 수 있는 ```문의 내역``` 항목이 있습니다.  
<br />

#### 판매관리 - 판매 중
판매 중인 포트폴리오를 관리할 수 있습니다.  

![s_판매내역](https://user-images.githubusercontent.com/80952596/146004476-392945ec-9796-4aab-8dca-c67653eb2b47.PNG)

포트폴리오 별 진행중이거나 완료된 거래를 확인할 수 있는 거래 현황과  
판매 중인 포트폴리오의 정보를 수정 또는 삭제할 수 있습니다.  
<br />
<br />

#### 구매 관리
구매한 포트폴리오를 관리할 수 있는 ```구매 내역```,  
관심있는 포트폴리오를 언제든지 다시 찾아볼 수 있는 ```관심 상품```,  
판매 중인 포트폴리오에 대해 작성했던 문의를 확인할 수 있는 ```문의 내역``` 항목이 있습니다.  
<br />

#### 구매 내역 - 구매 중
현재까지 구매했던 포트폴리오를 관리할 수 있습니다.  

![s구매내역](https://user-images.githubusercontent.com/80952596/146004483-31f81412-b714-4f98-b69d-29949f0d875e.PNG)

구매한 포트폴리오에 문의 메시지를 남기거나, 첨부된 파일을 다운로드할 수 있습니다.  
<br />
<br />

### 관리자 페이지
관리자 페이지는 크게 사용자를 관리할 수 있는 ```고객 관리```,  
판매 중인 포트폴리오를 관리할 수 있는 ```포트폴리오 관리```,  
각종 데이터가 집계된 통계 자료를 열람할 수 있는 ```정보 현황``` 으로 구분됩니다.  

각 항목은 여러 세부 항목을 포함하고 있습니다.  
<br />

#### 관리자 메인
관리자 서비스의 메인 페이지입니다.  

![p영상_관리자페이지 전체](https://user-images.githubusercontent.com/80952596/146004687-e17c0265-12e4-4e18-8c1f-8cd720fe865d.gif)

자주 확인하는 통계 자료를 그림과 함께 간략하게 확인할 수 있습니다.  
<br />
<br />

#### 포트폴리오 관리
사용자가 판매 중인 모든 포트폴리오를 관리할 수 있는 항목입니다.    
세부 항목으로 ```포트폴리오 정보``` 있습니다.  

#### 포트폴리오 관리 - 포트폴리오 정보
사용자가 판매 중인 모든 포트폴리오의 목록을 확인할 수 있습니다.  

![s관리자 포폴리스트](https://user-images.githubusercontent.com/80952596/146004509-98e3d2b2-c0ca-4dc3-9a02-9cb2705e9090.PNG)

상단의 검색바를 통해 특정 포트폴리오를 검색할 수 있습니다.  

제목을 클릭하여 해당 포트폴리오의 상세 정보를 확인할 수 있고,  
이름을 클릭하여 판매자 정보를 확인할 수 있습니다.    
<br />
<br />

#### 포트폴리오 관리 - 포트폴리오 상세 정보

![s 관리자 페이지 포폴리스트+상세보기](https://user-images.githubusercontent.com/80952596/146004523-2ae33082-74da-40e3-9333-31a4b739204d.PNG)

포트폴리오의 상세 정보를 확인할 수 있습니다.  

또한 해당 포트폴리오의 통계를 한눈에 확인할 수 있습니다.  
