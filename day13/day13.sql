SELECT 
	toh.orderno,
	toh.orddt,
	toh.memid,
	tod.goodscd,
	tod.qty,
	tod.amt
FROM tb_order_d tod
LEFT JOIN  tb_order_h toh 
ON toh.orderno  = tod.orderno 
ORDER BY toh.orderno 

SELECT 
	toh.orderno,
	toh.orddt,
	toh.memid,
	tod.goodscd,
	tod.qty,
	tod.amt
FROM  tb_order_h toh
LEFT JOIN tb_order_d tod 
ON toh.orderno  = tod.orderno 
ORDER BY toh.orderno 


SELECT * 
FROM tb_order_h
WHERE goodscd = 'GDS01'
WHERE orderno = '202202002'

SELECT * 
FROM tb_order_d
WHERE goodscd = 'GDS01'
WHERE orderno = '202202002'

SELECT * 
FROM tb_order_h

SELECT * 
FROM tb_order_d

SELECT * 
FROM tb_members


SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tod.qty,
tod.amt
FROM tb_order_h toh
LEFT JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
ORDER BY toh.orderno 

SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tod.qty,
tod.amt
FROM (tb_order_h toh
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid )
INNER JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 

ORDER BY toh.orderno 

SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tod.qty,
tod.amt
FROM tb_order_h toh
INNER JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
ORDER BY toh.orderno 

SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tod.qty,
tod.amt
FROM tb_order_h toh
LEFT JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
ORDER BY toh.orderno 

SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tod.qty,
tod.amt
FROM (tb_order_h toh
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid )
INNER JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 

SELECT *
FROM tb_items_info tii 

SELECT 
tod.orderno ,
tod.goodscd ,
tii.goodsname ,
tod.qty ,
tod.amt 
FROM tb_order_d tod 
LEFT OUTER JOIN tb_items_info tii 
ON tod.goodscd = tii.goodscd 
ORDER BY tod.orderno, tod.goodscd


SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tod.goodscd,
tii.goodsname,
tod.qty,
tod.amt
FROM tb_order_h toh 
INNER JOIN tb_order_d tod 
ON toh.orderno = tod.orderno 
INNER JOIN tb_items_info tii 
ON tod.goodscd = tii.goodscd 
ORDER BY toh.orderno 

SELECT * FROM tb_order_d


SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tii.goodsname,
tod.qty,
tod.amt
FROM tb_order_h toh 
LEFT JOIN tb_order_d tod 
ON toh.orderno = tod.orderno
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
LEFT JOIN tb_items_info tii 
ON tod.goodscd = tii.goodscd 
ORDER BY toh.orderno 


CREATE TABLE `tb_jobinfo` ( 
    jobcd   CHAR(1) NOT NULL,
    jobname VARCHAR(20) NULL DEFAULT NULL,
    PRIMARY KEY (jobcd)
)
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB;

commit;

INSERT INTO `tb_jobinfo`  
       VALUES ('1', '학생'), ('2', '회사원'), ('3', '공무원'),
              ('4', '교사'), ('9','기타');
              
select *
from tb_jobinfo tj 

SELECT *
FROM tb_members tm 

SELECT   
tm.memid, 
tm.memname, 
tm.jobcd, 
tj.jobname
FROM tb_members tm 
LEFT OUTER JOIN tb_jobinfo tj 
ON tm.jobcd = tj.jobcd 

CREATE TABLE tb_unitinfo ( 
    unitcd   CHAR(2) NOT NULL,
    unitname VARCHAR(20) NULL DEFAULT NULL,
    PRIMARY KEY  (unitcd)
    )
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB;

commit;

SELECT *
FROM tb_unitinfo 


INSERT INTO `tb_unitinfo`  
       VALUES ('01', '권'), ('02', 'EA'), 
              ('03', 'BOX'), ('99', '기타');
              
             
SELECT 
tii.goodscd,
tii.goodsname,
tii.unitcd,
b.unitname
FROM tb_items_info tii 
LEFT OUTER JOIN tb_unitinfo b 
ON tii.unitcd = b.unitcd

select * from tb_unitinfo

-- 6 table JOIN
SELECT 
toh.orderno,
toh.orddt,
toh.memid,
tm.memname,
tod.goodscd,
tii.goodsname,
tod.qty,
tod.amt,
f.unitname

FROM tb_order_h toh 
LEFT JOIN tb_order_d tod 
ON toh.orderno = tod.orderno
LEFT JOIN tb_members tm 
ON toh.memid = tm.memid 
LEFT JOIN tb_items_info tii 
ON tod.goodscd = tii.goodscd 
LEFT OUTER JOIN tb_jobinfo tj 
ON tm.jobcd = tj.jobcd 
LEFT OUTER JOIN tb_unitinfo f 
ON tii.unitcd = f.unitcd
ORDER BY toh.orderno 

SELECT 
tm.memid ,
tm.memname 
FROM tb_members tm 
WHERE memid = 
(SELECT memid FROM tb_order_h toh LIMIT 5, 1)

SELECT memid FROM tb_order_h toh LIMIT 5, 1


SELECT *
FROM tb_order_h toh 

SELECT *
FROM tb_members tm 


SELECT 
tm.memid,
memname  
FROM tb_members tm 
WHERE NOT EXISTS (SELECT * FROM tb_order_h toh WHERE tm.memid=toh.memid)


SELECT 
	toh.orderno,
	toh.orddt,
	toh.memid,
	toh.ordamt
FROM tb_order_h toh 
WHERE NOT EXISTS (SELECT * FROM tb_order_d b WHERE toh.orderno = b.orderno)

SELECT *
FROM tb_order_h

SELECT *
FROM tb_order_d

SELECT 
	tod.orderno,
	tod.goodscd ,
	tod.qty,
	tod.amt
FROM tb_order_d tod 
WHERE NOT EXISTS (SELECT * FROM tb_order_h b WHERE tod.orderno = b.orderno)



SELECT 
tod.orderno ,
tod.goodscd 
FROM tb_order_d tod 
WHERE NOT EXISTS (SELECT * FROM tb_items_info tii WHERE tod.goodscd=tii.goodscd)

SELECT *
FROM tb_items_info


SELECT 
tii.goodscd ,
tii.goodsname 
FROM tb_items_info tii 
WHERE NOT EXISTS (SELECT * FROM tb_order_d tod WHERE tii.goodscd = tod.goodscd)



SELECT 
memid,
memname,
addr,
jobcd
FROM tb_members tm 
WHERE jobcd >= ALL (SELECT jobcd FROM tb_members WHERE addr LIKE '%인천%')

SELECT 
*
FROM tb_members

SELECT 
*
FROM tb_order_h toh  

SELECT 
*
FROM tb_order_d toh  

-- MariaDB case
SELECT toh.memid FROM tb_order_h toh  
WHERE memid IN (SELECT memid FROM tb_order_h a 
				WHERE NOT EXISTS(
					SELECT * FROM tb_members b WHERE a.memid=b.memid)
				);
			
-- MySQL case			
SELECT toh.memid FROM tb_order_h toh  
WHERE memid NOT IN (SELECT DISTINCT memid FROM (
							SELECT toh2.memid FROM tb_order_h toh2 
							INNER JOIN tb_members tm 
							WHERE toh2.memid=tm.memid) AS a);
				

-- MariaDB 
SELECT orderno FROM tb_order_h toh WHERE orderno IN (
				SELECT orderno FROM tb_order_h a WHERE NOT EXISTS (
											SELECT * FROM tb_order_d b WHERE a.orderno = b.orderno)
											)
-- MySQL DB
SELECT orderno FROM tb_order_h toh WHERE toh.orderno NOT IN (
				SELECT DISTINCT a.orderno FROM (
								SELECT toh2.orderno FROM tb_order_h toh2 
													INNER JOIN tb_order_d tod 
													WHERE toh2.orderno=tod.orderno) AS a);		
			
SELECT memid custid, memname custnm FROM tb_members		
	

CREATE TABLE `tb_customer` (
    `custid` VARCHAR(10) NOT NULL,
    `custnm` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`custid`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=INNODB
SELECT memid custid, memname custnm FROM tb_members;

COMMIT;

SELECT * FROM tb_members tm  

SELECT * FROM tb_customer 

drop table tb_customer

DELETE FROM tb_customer 
TRUNCATE tb_customer 

INSERT INTO tb_customer (custid, custnm)
SELECT memid, memname FROM tb_members;
	


SELECT memid, memname FROM tb_members tm 
UNION
SELECT custid, custnm FROM tb_customer tc 
-----------------------------------------------------------------------
SELECT memid, SUM(ordamt) AS total
FROM tb_order_h toh
ORDER BY memid

SELECT memid, SUM(ordamt) AS total
FROM tb_order_h toh
GROUP BY memid

SELECT memid, SUM(ordamt) over (PARTITION BY memid) AS total
FROM tb_order_h toh
ORDER BY memid

SELECT DISTINCT memid, SUM(ordamt) over (PARTITION BY memid) AS total
FROM tb_order_h toh
ORDER BY memid

----------------------------------------------

SELECT MAX(ordamt), MIN(ordamt)
FROM tb_order_h toh 

---------------------------------------
SELECT AVG(ordamt) FROM tb_order_h;
SELECT memid, AVG(ordamt) FROM tb_order_h GROUP BY memid;


------------------------

SELECT COUNT(*) FROM tb_order_h toh 

SELECT CONVERT(orddt, CHAR(7)), COUNT(*) FROM tb_order_h toh 
	GROUP BY CONVERT(orddt, CHAR(7))
	ORDER BY CONVERT(orddt, CHAR(7));
	
SELECT COUNT(DISTINCT memname) FROM tb_members tm ;


SELECT orddt, SUM(ordamt)
FROM tb_order_h toh 
GROUP BY orddt 
ORDER BY orddt

SELECT memid AS '주문자', SUM(ordamt) AS '함계'
FROM tb_order_h toh 
GROUP BY memid
ORDER BY memid;



SELECT a.memid AS '주문자',
	   b.memname AS '주문자이름',
	   SUM(a.ordamt) AS '합계'
FROM tb_order_h a
INNER JOIN tb_members b  
ON a.memid = b.memid
GROUP BY a.memid
ORDER BY a.memid;


SELECT 
b.goodscd  AS '상품코드',
CONVERT(a.orddt, CHAR(7)) AS '연월',
SUM(b.qty) AS '주문수량'
FROM tb_order_h a 
INNER JOIN tb_order_d b 
ON a.orderno = b.orderno 
GROUP BY b.goodscd, CONVERT(a.orddt, CHAR(7))
ORDER BY b.goodscd, CONVERT(a.orddt, CHAR(7));

SELECT 
CONVERT(a.orddt, CHAR(7)) AS '연월',
COUNT(*) AS '건수',
MAX(ordamt) AS '최대값',
MIN(ordamt) AS '최소값'
FROM tb_order_h a
WHERE YEAR(orddt) = 2022
GROUP BY CONVERT(a.orddt, CHAR(7))
ORDER BY CONVERT(a.orddt, CHAR(7));


SELECT CONVERT(a.orddt, CHAR(7)) AS '연월',
AVG(ordamt) AS '평균값'
FROM tb_order_h a
WHERE YEAR(orddt) = 2022
GROUP BY CONVERT(a.orddt, CHAR(7))
ORDER BY CONVERT(a.orddt, CHAR(7));



SELECT 
	CONVERT(a.orddt, CHAR(7)) AS '연월',
	AVG(ordamt) AS '평균값'
	FROM tb_order_h a
	WHERE YEAR(orddt) = 2022 
	GROUP BY CONVERT(a.orddt, CHAR(7))
UNION ALL 
SELECT 
	CONVERT(a.orddt, CHAR(4)) AS '연월',
	AVG(ordamt) AS '평균값'
	FROM tb_order_h a
	WHERE YEAR(orddt) = 2022 
ORDER BY '연월';


SELECT orderno, orddt, ordamt
FROM tb_order_h 
WHERE ordamt> (SELECT AVG(ordamt) FROM tb_order_h toh WHERE YEAR(orddt) = 2022)
AND YEAR(orddt) = 2022


SELECT 
	b.goodscd AS '상품코드',
	goodsname AS '상품명',
	SUM(CASE MONTH(a.orddt) WHEN 1 THEN amt ELSE 0 END) AS '1월',
	SUM(CASE MONTH(a.orddt) WHEN 2 THEN amt ELSE 0 END) AS '2월',
	SUM(CASE MONTH(a.orddt) WHEN 3 THEN amt ELSE 0 END) AS '3월',
	SUM(CASE MONTH(a.orddt) WHEN 4 THEN amt ELSE 0 END) AS '4월'
FROM tb_order_h a
INNER JOIN tb_order_d b 
ON a.orderno = b.orderno 
INNER JOIN tb_items_info c 
ON b.goodscd = c.goodscd 
WHERE YEAR(a.orddt) = 2022 
GROUP BY b.goodscd 
ORDER BY b.goodscd ;



CREATE OR REPLACE VIEW v_order_info
	AS 
		SELECT 
		a.orderno ,
		a.orddt ,
		a.memid ,
		c.memname ,
		b.goodscd ,
		d.goodsname ,
		b.qty ,
		b.amt 
		FROM tb_order_h a 
		INNER JOIN tb_order_d b 
		ON a.orderno = b.orderno 
		INNER JOIN tb_members c
		ON a.memid = c.memid 
		INNER JOIN tb_items_info d
		ON b.goodscd = d.goodscd ;
		
commit;	


SELECT * 
FROM v_order_info voi 
ORDER BY orderno;