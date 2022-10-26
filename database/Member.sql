CREATE TABLE MEMBER (
	userid varchar2(50) PRIMARY KEY,
	email varchar2(50) unique not NULL,
	id varchar2(20) unique not NULL,
	pass varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	nick varchar2(20) unique not NULL,
	standard varchar2(100) NOT NULL,
	point NUMBER 
);
SELECT * FROM MEMBER;


DROP TABLE MEMBER;

INSERT INTO MEMBER VALUES (0001, 'msv21c@naver.com', 'abc123', 'aqw23', '홍길동','한라봉', '입문', 56 );