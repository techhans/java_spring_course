CREATE TABLE `tb_members` (
	`memid` VARCHAR(9) NOT NULL COMMENT '회원ID'
		COLLATE 'utf8mb4_general_ci',
	`memname` VARCHAR(20) NOT NULL COMMENT '회원명'
		COLLATE 'utf8mb4_general_ci',
	`passwd` VARCHAR(128) NULL DEFAULT NULL
		COMMENT '비밀번호' COLLATE 'utf8mb4_general_ci',
	`passwdmdt` DATETIME NULL DEFAULT NULL COMMENT '비밀번호변경일시',
	`jumin` VARCHAR(64) NULL DEFAULT NULL COMMENT '주민등록번호'
		COLLATE 'utf8mb4_general_ci',
	`addr` VARCHAR(100) NULL DEFAULT NULL COMMENT '주소'
		COLLATE 'utf8mb4_general_ci',
	`birthday` DATE NULL DEFAULT NULL COMMENT '생년월일',
	`jobcd` CHAR(1) NULL DEFAULT NULL COMMENT '직업코드'
		COLLATE 'utf8mb4_general_ci',
	`mileage` DECIMAL(7,0) UNSIGNED NULL DEFAULT '0' COMMENT '마일리지',
	`stat` ENUM('Y','N') NOT NULL DEFAULT 'Y' COMMENT '상태'
		COLLATE 'utf8mb4_general_ci',
	`enterdtm` DATETIME NOT NULL DEFAULT current_timestamp()
		COMMENT '가입일시',
	`leavedtm` DATETIME NULL DEFAULT NULL COMMENT '탈퇴일시',
	PRIMARY KEY (`memid`)
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `tb_items_info` (
	`goodscd` CHAR(5) NOT NULL COMMENT '상품코드'
		COLLATE 'utf8mb4_general_ci',
	`goodsname` VARCHAR(20) NOT NULL COMMENT '상품명'
		COLLATE 'utf8mb4_general_ci',
	`unitcd` CHAR(2) NULL DEFAULT NULL COMMENT '단위코드'
		COLLATE 'utf8mb4_general_ci',
	`unitprice` DECIMAL(5,0) UNSIGNED NOT NULL DEFAULT '0'
		COMMENT '단가',
	`stat` ENUM('Y','N') NOT NULL DEFAULT 'Y' COMMENT '상태'
		COLLATE 'utf8mb4_general_ci',
	`insdtm` DATETIME NOT NULL DEFAULT current_timestamp()
		COMMENT '등록일시',
	`moddtm` DATETIME NULL DEFAULT NULL COMMENT '탈퇴일시',
	PRIMARY KEY (`goodscd`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;



CREATE TABLE `tb_order_h` (
	`orderno` CHAR(9) NOT NULL COMMENT '주문번호'
		COLLATE 'utf8mb4_general_ci',
	`orddt` DATE NOT NULL COMMENT '주문일',
	`memid` VARCHAR(10) NOT NULL COMMENT '주문자ID'
		COLLATE 'utf8mb4_general_ci',
	`ordamt` DECIMAL(7,0) UNSIGNED NOT NULL DEFAULT '0'
		COMMENT '주문총액',
	`cancelyn` ENUM('Y','N') NOT NULL DEFAULT 'N'
		COMMENT '주문상태' COLLATE 'utf8mb4_general_ci',
	`canceldtm` DATETIME NULL DEFAULT NULL COMMENT '주문취소일시',
	`insdtm` DATETIME NOT NULL DEFAULT current_timestamp()
		COMMENT '등록일시',
	`moddtm` DATETIME NULL DEFAULT NULL COMMENT '변경일시',
	PRIMARY KEY (`orderno`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `tb_order_d` (
	`orderno` CHAR(9) NOT NULL COMMENT '주문번호'
		COLLATE 'utf8mb4_general_ci',
	`goodscd` CHAR(5) NOT NULL COMMENT '상품코드'
		COLLATE 'utf8mb4_general_ci',
	`unitcd` CHAR(2) NULL DEFAULT NULL COMMENT '단위코드'
		COLLATE 'utf8mb4_general_ci',
	`unitprice` DECIMAL(5,0) UNSIGNED NOT NULL DEFAULT '0'
		COMMENT '단가',
	`qty` DECIMAL(3,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT '주문수량',
	`amt` DECIMAL(7,0) UNSIGNED NOT NULL DEFAULT '0' COMMENT '주문금액',
	`insdtm` DATETIME NOT NULL DEFAULT current_timestamp()
		COMMENT '등록일시',
	`moddtm` DATETIME NULL DEFAULT NULL COMMENT '변경일시',
	PRIMARY KEY (`orderno`, `goodscd`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;




INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `mileage`, `enterdtm`) 
	VALUES
	('hong1', '홍길동', '인천 동구 송림동', '2000-05-08', '2', 500, '2022-03-01 14:10:27');

INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `mileage`, `enterdtm`) 
	VALUES
	('hong2', '홍길동', '서울 강남구 신사동', '1990-01-05', '9', 1000,  '2022-03-01 14:11:50');

INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `enterdtm`) 
	VALUES
	('kim1', '김갑수', '인천 연수구 연수동', '2003-07-01', '1', '2022-03-01 14:12:39');

# P100: 그래픽 모드에서 입력한 데이터를 로그 영역에서 확인
INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `enterdtm`) 
	VALUES
	('park', '박기자', '경기 부천시', '2002-09-30', '3', '2022-03-01 14:13:16');

# P101: SQL 문으로 추가 데이터 입력하기  
INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `enterdtm`) 
	VALUES
	('seo', '서갑돌',  '인천 동구', '1998-03-10', '1', '2022-03-01 14:08:41');

INSERT  INTO `tb_members` 
	(`memid`, `memname`, `addr`, `birthday`, `jobcd`, `enterdtm`) 
	VALUES
	('Taeh', '태현', '경기 수원시', '2002-10-15', '4', '2022-03-01 14:15:10');









INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS01', '노트', '01', '2000', '2022-03-01 14:42:44');

# P103: SQL 문으로 추가 데이터 입력하기  
INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS02', '연필', '02', '100', '2022-03-01 14:43:17');

INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS03', '복사지', '03', '5000', '2022-03-01 14:43:47');

INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS04', '볼펜', '02', '500', '2022-03-01 14:44:13');

INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS05', '네임펜', '02', '1000', '2022-03-01 14:44:30');

INSERT INTO `tb_items_info` 
    (`goodscd`, `goodsname`, `unitcd`, `unitprice`, `insdtm`) 
    VALUES ('GDS06', '크레파스', '02', '1500', '2022-03-01 14:45:30');
   




INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202201001', '2022-01-24', 'seo', '10000', '2022-03-01 14:49:07');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202201002', '2022-01-24', 'hong2', '15000', '2022-03-01 14:50:35');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202201003', '2022-01-25', 'hong1', '20000', 
     '2022-03-01 14:51:19');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202201004', '2022-01-25', 'kim1', '10000', 
     '2022-03-01 14:51:58');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `cancelyn`, 
     `canceldtm`, `insdtm`) VALUES
    ('202201005', '2022-01-25', 'park', '5000', 'Y', 
     '2022-01-25 00:00:00', '2022-03-01 14:53:12');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202202001', '2022-02-01', 'hong1', '30000', '2022-03-01 14:54:09');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202202002', '2022-02-01', 'hong1', '1000', '2022-03-01 14:54:40');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202202003', '2022-02-02', 'park', '10000', '2022-03-01 14:55:28');

INSERT INTO `tb_order_h` 
    (`orderno`, `orddt`, `memid`, `ordamt`, `insdtm`) VALUES
    ('202202004', '2022-02-02', 'abcd', '500', '2022-03-01 14:56:03');   





INSERT INTO `tb_order_d` 
     (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
     ('202201001', 'GDS01', '01', '2000', '10', '20000', '2022-03-01 15:10:39');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201001', 'GDS02', '02', '100', '50', '5000', '2022-03-01 15:11:39');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201001', 'GDS03', '03', '5000', '1', '5000', '2022-03-01 15:12:23');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201002', 'GDS01', '01', '1000', '5', '5000', '2022-03-01 15:13:28');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201002', 'GDS03', '03', '5000', '10', '50000', '2022-03-01 15:14:26');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201003', 'GDS04', '02', '500', '50', '25000', '2022-03-01 15:15:12');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201004', 'GDS05', '02', '1000', '10', '10000', '2022-03-01 15:15:59');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201005', 'GDS02', '02', '100', '50', '5000', '2022-03-01 15:16:45');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201005', 'GDS03', '03', '5000', '4', '20000', '2022-03-01 15:17:30');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202201006', 'GDS01', '01', '2000', '1', '2000', '2022-03-01 15:18:08');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202202001', 'GDS01', '01', '2000', '10', '20000', '2022-03-01 15:18:59');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) 
    VALUES
    ('202202001', 'GDS03', '03', '5000', '1', '5000', '2022-03-01 15:19:10');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) 
    VALUES
    ('202202001', 'GDS05', '02', '1000', '20', '20000', '2022-03-01 15:19:20');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) VALUES
    ('202202003', 'GDS01', '01', '2000', '10', '20000', '2022-03-01 15:19:30');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) 
    VALUES
    ('202202003', 'GDS07', '03', '2000', '20', '40000', '2022-03-01 15:20:30');

INSERT INTO `tb_order_d` 
    (`orderno`, `goodscd`, `unitcd`, `unitprice`, `qty`, `amt`, `insdtm`) 
    VALUES
    ('202202004', 'GDS01', '01', '2000', '10', '20000', '2022-03-01 15:21:18');

SELECT memid memname
FROM tb_members 
ORDER BY memname DESC;


SELECT memid, memname 
FROM tb_members 
ORDER BY memname,memid ASC


SELECT DISTINCT jobcd
FROM tb_members
ORDER BY jobcd ;


SELECT *
FROM tb_members
LIMIT 3


SELECT ROWNUM() as NO,
	toh.orderno,
	toh.orddt,
	toh.memid,
	toh.ordamt,
	tm.memid,
	tm.memname,
	tm.addr 
FROM tb_order_h toh, tb_members tm 
WHERE toh.memid = tm.memid 
AND tm.memid='hong1'





SELECT ROWNUM() as NO,
	toh.orderno,
	toh.orddt,
	toh.memid,
	toh.ordamt,
	tm.memid,
	tm.memname,
	tm.addr 
FROM tb_order_h toh 
INNER JOIN tb_members tm 
ON toh.memid = tm.memid 


SELECT * 
FROM tb_order_h

SELECT * 
FROM tb_members




SELECT ROWNUM() as NO,
	toh.orderno,
	toh.orddt,
	toh.memid,
	toh.ordamt,
	tm.memid,
	tm.memname,
	tm.addr 
FROM tb_order_h toh 
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 


SELECT ROWNUM() as NO,
	toh.orderno,
	toh.orddt,
	toh.memid,
	toh.ordamt,
	tm.memid,
	tm.memname,
	tm.addr 
FROM tb_order_h toh 
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
WHERE toh.ordamt > 3000 AND (tm.jobcd = '1' OR tm.jobcd= '2')
ORDER BY toh.orderno DESC

