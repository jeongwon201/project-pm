-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.10-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- portfolio_matching 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `portfolio_matching` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `portfolio_matching`;

-- 테이블 portfolio_matching.answer 구조 내보내기
CREATE TABLE IF NOT EXISTS `answer` (
  `ans_id` int(11) NOT NULL AUTO_INCREMENT,
  `ans_deal_id` int(11) DEFAULT NULL,
  `ans_inq_id` int(11) DEFAULT NULL,
  `ans_saleUser` varchar(50) DEFAULT NULL,
  `ans_content` varchar(200) DEFAULT NULL,
  `ans_regDate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='문의내역 답변 테이블';

-- 테이블 데이터 portfolio_matching.answer:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;

-- 테이블 portfolio_matching.category_main 구조 내보내기
CREATE TABLE IF NOT EXISTS `category_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- 테이블 데이터 portfolio_matching.category_main:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `category_main` DISABLE KEYS */;
INSERT IGNORE INTO `category_main` (`id`, `name`) VALUES
	(1, 'IT 프로그래밍'),
	(2, '디자인'),
	(3, '영상, 사진, 음향'),
	(4, '마케팅'),
	(5, '번역 및 통역'),
	(6, '문서'),
	(7, '비즈니스 컨설팅'),
	(8, '주문 제작');
/*!40000 ALTER TABLE `category_main` ENABLE KEYS */;

-- 테이블 portfolio_matching.category_sub 구조 내보내기
CREATE TABLE IF NOT EXISTS `category_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_id` (`main_id`),
  CONSTRAINT `main_id` FOREIGN KEY (`main_id`) REFERENCES `category_main` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- 테이블 데이터 portfolio_matching.category_sub:~99 rows (대략적) 내보내기
/*!40000 ALTER TABLE `category_sub` DISABLE KEYS */;
INSERT IGNORE INTO `category_sub` (`id`, `main_id`, `name`) VALUES
	(1, 1, '기획'),
	(2, 1, '웹사이트 개발'),
	(3, 1, '쇼핑몰 및 커머스'),
	(4, 1, '모바일 앱'),
	(5, 1, '프로그램 개발'),
	(6, 1, '임베디드 HW 및 SW'),
	(7, 1, '게임'),
	(8, 1, '데이터베이스'),
	(9, 1, '블록체인'),
	(10, 1, '보안'),
	(11, 1, '서버 및 호스팅'),
	(12, 1, '기타'),
	(13, 2, '로고 및 브랜딩'),
	(14, 2, '상세 및 이벤트 페이지'),
	(15, 2, '명함 및 인쇄'),
	(16, 2, 'PPT'),
	(17, 2, '웹 및 모바일 디자인'),
	(18, 2, '패키지 디자인'),
	(19, 2, '일러스트'),
	(20, 2, '웹툰'),
	(21, 2, 'SNS'),
	(22, 2, '포토샵'),
	(23, 2, '3D 프린팅'),
	(24, 2, '북 및 앨범 디자인'),
	(25, 2, '캘리그라피'),
	(26, 2, 'VR'),
	(27, 2, '의류 디자인'),
	(28, 2, '간판 및 시공'),
	(29, 2, '기타'),
	(30, 3, '영상 촬영 및 편집'),
	(31, 3, '유튜브 제작'),
	(32, 3, '온라인 생중계'),
	(33, 3, '드론 촬영'),
	(34, 3, '애니메이션'),
	(35, 3, '3D 및 VR'),
	(36, 3, '인트로 및 로고'),
	(37, 3, '영상 자막'),
	(38, 3, '영상 템플릿'),
	(39, 3, '사진 촬영'),
	(40, 3, '사진 및 영상 보정'),
	(41, 3, '성우'),
	(42, 3, '음악 및 사운드'),
	(43, 3, '모델, MC, 공연'),
	(44, 3, '스튜디오 렌탈'),
	(45, 3, '기타'),
	(46, 4, '블로그 마케팅'),
	(47, 4, '카페 마케팅'),
	(48, 4, '카페 마케팅'),
	(49, 4, 'SNS 마케팅'),
	(50, 4, '쇼핑몰 및 스토어'),
	(51, 4, '언론 홍보'),
	(52, 4, '종합 광고 대행'),
	(53, 4, '검색 최적화'),
	(54, 4, '지도 등록 및 홍보'),
	(55, 4, '앱 마케팅'),
	(56, 4, '라이브커머스'),
	(57, 4, '개인 인플루언서'),
	(58, 4, '키워드 및 배너 광고'),
	(59, 4, '포털 질문 및 답변'),
	(60, 4, '영상 마케팅'),
	(61, 4, '오프라인 광고'),
	(62, 4, '브랜드 마케팅'),
	(63, 4, '기타'),
	(64, 5, '산업 별 전문번역'),
	(65, 5, '일반 번역'),
	(66, 5, '통역'),
	(67, 5, '영상 번역'),
	(68, 5, '기타'),
	(69, 6, '기업명 및 네이밍'),
	(70, 6, '제품 카피라이팅'),
	(71, 6, '광고 카피라이팅'),
	(72, 6, '마케팅 글 작성'),
	(73, 6, '보도 자료'),
	(74, 6, '산업 전문 글 작성'),
	(75, 6, '타이핑(영상)'),
	(76, 6, '타이핑(문서)'),
	(77, 6, '책 및 시나리오'),
	(78, 6, '논문'),
	(79, 6, '교정 및 교열 첨삭'),
	(80, 6, '기타'),
	(81, 7, '사업 계획서 및 투자 제안서'),
	(82, 7, '퍼스널 브랜딩'),
	(83, 7, '유튜브 컨설팅'),
	(84, 7, '창업 컨설팅'),
	(85, 7, '쇼핑몰 및 스토어 창업'),
	(86, 7, '크라우드 펀딩'),
	(87, 7, '해외 사업 컨설팅'),
	(88, 7, '리서치 및 설문 조사'),
	(89, 7, '법률 및 법무'),
	(90, 7, '인사 및 노무'),
	(91, 7, '특허 및 IP'),
	(92, 7, '세무 회계'),
	(93, 7, '업무 지원 및 CS'),
	(94, 7, '기타'),
	(95, 8, '인쇄'),
	(96, 8, '간판'),
	(97, 8, '3D 프린팅'),
	(98, 8, '인테리어 시공'),
	(99, 8, '기타');
/*!40000 ALTER TABLE `category_sub` ENABLE KEYS */;

-- 테이블 portfolio_matching.deal 구조 내보내기
CREATE TABLE IF NOT EXISTS `deal` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_portfolio_id` int(11) DEFAULT NULL,
  `deal_purUser` varchar(50) DEFAULT NULL,
  `deal_saleUser` varchar(50) DEFAULT NULL,
  `deal_price` int(11) DEFAULT NULL,
  `deal_status` varchar(50) DEFAULT NULL,
  `deal_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 portfolio_matching.deal:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `deal` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal` ENABLE KEYS */;

-- 테이블 portfolio_matching.file 구조 내보내기
CREATE TABLE IF NOT EXISTS `file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_portfolio_id` int(11) DEFAULT NULL,
  `file_org_name` varchar(260) DEFAULT NULL,
  `file_stored_name` varchar(36) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_del_GB` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 portfolio_matching.file:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- 테이블 portfolio_matching.inquiry 구조 내보내기
CREATE TABLE IF NOT EXISTS `inquiry` (
  `inq_id` int(11) NOT NULL AUTO_INCREMENT,
  `inq_deal_id` int(11) NOT NULL,
  `inq_portfolio_id` int(11) NOT NULL,
  `inq_purUser` varchar(50) NOT NULL,
  `inq_title` varchar(50) DEFAULT NULL,
  `inq_content` varchar(200) NOT NULL,
  `inq_regDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`inq_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='문의내역';

-- 테이블 데이터 portfolio_matching.inquiry:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;

-- 테이블 portfolio_matching.manage 구조 내보내기
CREATE TABLE IF NOT EXISTS `manage` (
  `manage_id` varchar(50) NOT NULL,
  `manage_pw` varchar(50) NOT NULL,
  PRIMARY KEY (`manage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='관리자';

-- 테이블 데이터 portfolio_matching.manage:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;

-- 테이블 portfolio_matching.portfolio 구조 내보내기
CREATE TABLE IF NOT EXISTS `portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '포트폴리오 번호',
  `portfolio_userId` varchar(50) NOT NULL COMMENT '포트폴리오 등록자 아이디',
  `portfolio_title` varchar(100) NOT NULL COMMENT '포트폴리오 제목',
  `portfolio_category_main` int(11) DEFAULT NULL COMMENT '포트폴리오 대 카테고리',
  `portfolio_category_sub` int(11) DEFAULT NULL COMMENT '포트폴리오 소 카테고리',
  `portfolio_thumbUrl` varchar(50) DEFAULT NULL COMMENT '포트폴리오 썸네일',
  `portfolio_Img` longblob DEFAULT NULL COMMENT '포트폴리오 이미지',
  `portfolio_content` varchar(1000) NOT NULL COMMENT '포트폴리오 내용',
  `portfolio_price` int(11) NOT NULL COMMENT '포트폴리오 가격',
  `portfolio_term` varchar(50) NOT NULL COMMENT '포트폴리오 기간',
  `portfolio_rating` double NOT NULL DEFAULT 0 COMMENT '포트폴리오 별점',
  `portfolio_upload` varchar(50) DEFAULT NULL COMMENT '포트폴리오 업로드 파일',
  `portfolio_regDate` datetime NOT NULL COMMENT '포트폴리오 등록날짜',
  PRIMARY KEY (`portfolio_id`) USING BTREE,
  KEY `portfolio_main_category` (`portfolio_category_main`) USING BTREE,
  KEY `portfolio_sub_category` (`portfolio_category_sub`) USING BTREE,
  CONSTRAINT `FK_portfolio_category_main` FOREIGN KEY (`portfolio_category_main`) REFERENCES `category_main` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_portfolio_category_sub` FOREIGN KEY (`portfolio_category_sub`) REFERENCES `category_sub` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='포트폴리오';

-- 테이블 데이터 portfolio_matching.portfolio:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;

-- 테이블 portfolio_matching.review 구조 내보내기
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '등록번호',
  `review_portfolio_id` int(11) NOT NULL COMMENT '포트폴리오 번호',
  `review_userId` varchar(50) NOT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `review_title` varchar(50) NOT NULL COMMENT '제목',
  `review_content` varchar(50) NOT NULL COMMENT '글내용',
  `review_regDate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '등록날짜',
  PRIMARY KEY (`review_id`) USING BTREE,
  KEY `user_id` (`review_userId`) USING BTREE,
  KEY `port_num` (`review_portfolio_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='이용후기';

-- 테이블 데이터 portfolio_matching.review:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- 테이블 portfolio_matching.scrap 구조 내보내기
CREATE TABLE IF NOT EXISTS `scrap` (
  `scrap_id` int(11) NOT NULL AUTO_INCREMENT,
  `scrap_userId` varchar(50) NOT NULL DEFAULT '0',
  `scrap_portfolio_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`scrap_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='스크랩 목록';

-- 테이블 데이터 portfolio_matching.scrap:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `scrap` DISABLE KEYS */;
/*!40000 ALTER TABLE `scrap` ENABLE KEYS */;

-- 테이블 portfolio_matching.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_ref` int(11) DEFAULT 0,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사용자';

-- 테이블 데이터 portfolio_matching.user:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`user_id`, `user_pw`, `user_email`, `user_name`, `user_phone`, `user_ref`) VALUES
	('admin', '1234', 'admin@naver.com', '어드민', '01000000000', 1),
	('user', '1234', 'user@naver.com', '사용자', '01000000000', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 테이블 portfolio_matching.visit 구조 내보내기
CREATE TABLE IF NOT EXISTS `visit` (
  `vid` int(11) NOT NULL,
  `vip` varchar(100) DEFAULT NULL,
  `vtime` datetime DEFAULT NULL,
  `vrefer` varchar(300) DEFAULT NULL,
  `vagent` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 테이블 데이터 portfolio_matching.visit:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;

-- 트리거 portfolio_matching.review_after_insert 구조 내보내기
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `review_after_insert` AFTER INSERT ON `review` FOR EACH ROW BEGIN
	DECLARE id INT;
	SET id = NEW.review_portfolio_id;

	UPDATE portfolio SET portfolio_rating = (
		SELECT AVG(review_rating) FROM review WHERE review_portfolio_id = id GROUP BY review_portfolio_id
	) WHERE portfolio_id = id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
