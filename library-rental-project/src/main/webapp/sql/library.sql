-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.5.32 - MySQL Community Server (GPL)
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- library 의 데이터베이스 구조 덤핑
CREATE DATABASE IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `library`;


-- 테이블 library의 구조를 덤프합니다. book
CREATE TABLE IF NOT EXISTS `book` (
  `book_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '도서코드',
  `library_id` varchar(50) DEFAULT NULL COMMENT '관리자ID',
  `state_no` int(10) DEFAULT NULL COMMENT '도서상태',
  `genre_no` int(10) DEFAULT NULL COMMENT '도서장르',
  `book_name` varchar(50) DEFAULT NULL COMMENT '도서명',
  `book_author` varchar(50) DEFAULT NULL COMMENT '저자',
  `book_publisher` varchar(50) DEFAULT NULL COMMENT '출판사',
  `book_firstday` datetime DEFAULT NULL COMMENT '도서등록일',
  `book_totalday` int(11) DEFAULT NULL COMMENT '도서총대여일',
  `book_totalcount` int(10) DEFAULT NULL COMMENT '도서총대여횟수',
  PRIMARY KEY (`book_code`),
  KEY `FK__library` (`library_id`),
  KEY `FK__state` (`state_no`),
  KEY `FK__genre` (`genre_no`),
  CONSTRAINT `FK__genre` FOREIGN KEY (`genre_no`) REFERENCES `genre` (`genre_no`),
  CONSTRAINT `FK__library` FOREIGN KEY (`library_id`) REFERENCES `library` (`library_id`),
  CONSTRAINT `FK__state` FOREIGN KEY (`state_no`) REFERENCES `state` (`state_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='도서 관리 테이블';

-- Dumping data for table library.book: ~7 rows (대략적)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`book_code`, `library_id`, `state_no`, `genre_no`, `book_name`, `book_author`, `book_publisher`, `book_firstday`, `book_totalday`, `book_totalcount`) VALUES
	(1, 'admin', 1, 1, '자서전', '정상일', '상일컴퍼니', '2017-01-26 15:21:46', NULL, NULL),
	(2, 'admin', 1, 3, '김의진멍충이', '김의진', '케이스마트', '2017-01-26 15:06:43', NULL, NULL),
	(3, 'admin', 1, 3, '퐝타지', '최유민', '케이스마트', '2017-01-26 15:37:00', NULL, NULL),
	(4, 'admin', 2, 5, '자바', '퐝', '상일컴퍼니', '2017-02-02 10:40:49', NULL, NULL),
	(5, 'admin', 1, 7, '자바 기초', '박성환', '케이스마트', '2017-02-02 12:45:29', NULL, NULL),
	(6, 'admin', 1, 3, '나는전설이다', '진남킴', '케이스마트', '2017-02-02 14:40:57', NULL, NULL),
	(7, 'admin', 1, 2, '꼭두각시', '김의진', '의진컴퍼니', '2017-02-02 15:50:53', NULL, NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. disposal
CREATE TABLE IF NOT EXISTS `disposal` (
  `disposal_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '폐기도서번호',
  `book_code` varchar(50) DEFAULT NULL COMMENT '도서코드',
  `disposal_bookname` varchar(50) DEFAULT NULL COMMENT '폐기도서명',
  `disposal_author` varchar(50) DEFAULT NULL COMMENT '저자',
  `genre_no` int(11) DEFAULT NULL COMMENT '장르',
  `disposal_publisher` varchar(50) DEFAULT NULL COMMENT '출판사',
  `disposal_registerday` datetime DEFAULT NULL COMMENT '폐기도서등록일',
  PRIMARY KEY (`disposal_no`),
  KEY `FK_disposal_genre` (`genre_no`),
  CONSTRAINT `FK_disposal_genre` FOREIGN KEY (`genre_no`) REFERENCES `genre` (`genre_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='도서폐기관리 테이블';

-- Dumping data for table library.disposal: ~6 rows (대략적)
/*!40000 ALTER TABLE `disposal` DISABLE KEYS */;
INSERT INTO `disposal` (`disposal_no`, `book_code`, `disposal_bookname`, `disposal_author`, `genre_no`, `disposal_publisher`, `disposal_registerday`) VALUES
	(1, '2', '김의진멍충이', '김의진', 3, '케이스마트', NULL),
	(2, '1', '자서전', '정상일', 1, '상일컴퍼니', '2017-01-26 15:26:07'),
	(3, '3', '퐝타지', '최유민', 3, '케이스마트', '2017-01-26 15:49:29'),
	(4, '4', '자바', '퐝', 5, '상일컴퍼니', '2017-01-26 15:52:58'),
	(5, '3', '퐝타지', '최유민', 3, '케이스마트', '2017-02-02 12:45:59'),
	(6, '6', '나는전설이다', '전설', 3, '케이스마트', '2017-02-02 14:41:18');
/*!40000 ALTER TABLE `disposal` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. genre
CREATE TABLE IF NOT EXISTS `genre` (
  `genre_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '장르번호',
  `genre_name` varchar(50) DEFAULT NULL COMMENT '장르명',
  PRIMARY KEY (`genre_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='도서장르 테이블';

-- Dumping data for table library.genre: ~7 rows (대략적)
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` (`genre_no`, `genre_name`) VALUES
	(1, '소설'),
	(2, '수필'),
	(3, '판타지'),
	(4, '시집'),
	(5, '논문'),
	(6, '잡지'),
	(7, '교육');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. library
CREATE TABLE IF NOT EXISTS `library` (
  `library_id` varchar(50) NOT NULL COMMENT '관리자ID',
  `library_pw` varchar(50) DEFAULT NULL COMMENT '관리자비번',
  `local_no` int(10) DEFAULT NULL,
  PRIMARY KEY (`library_id`),
  KEY `FK_library_local` (`local_no`),
  CONSTRAINT `FK_library_local` FOREIGN KEY (`local_no`) REFERENCES `local` (`local_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='도서관 관리자 테이블';

-- Dumping data for table library.library: ~7 rows (대략적)
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` (`library_id`, `library_pw`, `local_no`) VALUES
	('admin', 'admin', 1),
	('admin2', 'admin2', 4),
	('admin3', 'admin3', 3),
	('admin4', 'admin4', 4),
	('admin5', 'admin5', 6),
	('admin6', 'admin6', 2),
	('admin7', 'admin7', 3);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. local
CREATE TABLE IF NOT EXISTS `local` (
  `local_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '지역번호',
  `local_name` varchar(50) DEFAULT NULL COMMENT '지역명',
  PRIMARY KEY (`local_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='지역 테이블';

-- Dumping data for table library.local: ~6 rows (대략적)
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` (`local_no`, `local_name`) VALUES
	(1, '서울'),
	(2, '경기'),
	(3, '전라'),
	(4, '경상'),
	(5, '충청'),
	(6, '강원');
/*!40000 ALTER TABLE `local` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. member
CREATE TABLE IF NOT EXISTS `member` (
  `member_id` varchar(50) NOT NULL COMMENT '회원ID',
  `member_name` varchar(50) DEFAULT NULL COMMENT '회원명',
  `member_phone` varchar(50) DEFAULT NULL COMMENT '회원연락처',
  `memberlevel_no` int(11) DEFAULT NULL COMMENT '회원등급번호',
  PRIMARY KEY (`member_id`),
  KEY `FK_member_memberlevel` (`memberlevel_no`),
  CONSTRAINT `FK_member_memberlevel` FOREIGN KEY (`memberlevel_no`) REFERENCES `memberlevel` (`memberlevel_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원 테이블';

-- Dumping data for table library.member: ~5 rows (대략적)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`member_id`, `member_name`, `member_phone`, `memberlevel_no`) VALUES
	('id001', '김의진', '010xxxxxxxx', 1),
	('id002', '정상일', '01023451212', 2),
	('id003', '최유민', '01023421234', 2),
	('id004', '홍인용', '01089846654', 1),
	('id01', '정', '0101231431', 1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. memberlevel
CREATE TABLE IF NOT EXISTS `memberlevel` (
  `memberlevel_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '회원등급번호',
  `memberlevel_name` varchar(50) DEFAULT NULL COMMENT '회원등급명',
  `memberlevel_payment` int(10) DEFAULT NULL COMMENT '등급에따른대여료',
  PRIMARY KEY (`memberlevel_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='회원등급 테이블';

-- Dumping data for table library.memberlevel: ~2 rows (대략적)
/*!40000 ALTER TABLE `memberlevel` DISABLE KEYS */;
INSERT INTO `memberlevel` (`memberlevel_no`, `memberlevel_name`, `memberlevel_payment`) VALUES
	(1, '일반회원', 1000),
	(2, '유료회원', 500);
/*!40000 ALTER TABLE `memberlevel` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. rental
CREATE TABLE IF NOT EXISTS `rental` (
  `rental_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '대여코드',
  `book_code` int(11) DEFAULT NULL COMMENT '도서코드',
  `member_id` varchar(50) DEFAULT NULL COMMENT '회원ID',
  `rentalstate_no` int(10) DEFAULT NULL COMMENT '대여상태번호',
  `rental_start` datetime DEFAULT NULL COMMENT '대여시작일',
  `rental_end` datetime DEFAULT NULL COMMENT '대여종료일',
  `rental_payment` int(10) DEFAULT NULL COMMENT '잔여액',
  PRIMARY KEY (`rental_code`),
  KEY `FK_rental_member` (`member_id`),
  KEY `FK_rental_rentalstate` (`rentalstate_no`),
  KEY `FK_rental_book` (`book_code`),
  CONSTRAINT `FK_rental_book` FOREIGN KEY (`book_code`) REFERENCES `book` (`book_code`),
  CONSTRAINT `FK_rental_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FK_rental_rentalstate` FOREIGN KEY (`rentalstate_no`) REFERENCES `rentalstate` (`rentalstate_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='대여관리 테이블';

-- Dumping data for table library.rental: ~5 rows (대략적)
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` (`rental_code`, `book_code`, `member_id`, `rentalstate_no`, `rental_start`, `rental_end`, `rental_payment`) VALUES
	(1, 2, 'id002', 1, '2017-02-02 10:12:39', '2017-02-09 10:12:42', 500),
	(2, 1, 'id001', 2, '2017-01-24 16:20:16', '2017-01-31 16:20:20', 0),
	(3, 3, 'id003', 2, '2017-02-02 00:00:00', '2017-02-09 00:00:00', 0),
	(4, 4, 'id004', 2, '2017-02-02 14:11:00', '2017-02-09 14:11:00', 0),
	(5, 6, 'id01', 2, '2017-02-02 14:43:26', '2017-02-09 14:43:26', 0),
	(6, 7, 'id001', 1, '2017-02-03 12:19:31', '2017-02-10 12:19:31', 1000),
	(7, 5, 'id004', 2, '2017-02-03 12:22:43', '2017-02-10 12:22:43', 0);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. rentalstate
CREATE TABLE IF NOT EXISTS `rentalstate` (
  `rentalstate_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '대여상태번호',
  `rentalstate_name` varchar(50) DEFAULT NULL COMMENT '대여상태명',
  PRIMARY KEY (`rentalstate_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='대여상태 테이블';

-- Dumping data for table library.rentalstate: ~2 rows (대략적)
/*!40000 ALTER TABLE `rentalstate` DISABLE KEYS */;
INSERT INTO `rentalstate` (`rentalstate_no`, `rentalstate_name`) VALUES
	(1, '대여중'),
	(2, '반납완료');
/*!40000 ALTER TABLE `rentalstate` ENABLE KEYS */;


-- 테이블 library의 구조를 덤프합니다. state
CREATE TABLE IF NOT EXISTS `state` (
  `state_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '도서상태번호',
  `state_name` varchar(50) DEFAULT NULL COMMENT '도서상태명',
  PRIMARY KEY (`state_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='도서 상태 테이블';

-- Dumping data for table library.state: ~2 rows (대략적)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`state_no`, `state_name`) VALUES
	(1, '대여가능'),
	(2, '폐기');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
