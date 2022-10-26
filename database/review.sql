CREATE TABLE receipt(
	rctid varchar2(100) PRIMARY KEY,
	product varchar2(50));

CREATE TABLE review(
	rid number PRIMARY key,
	rctid varchar2(100) REFERENCES receipt(rctid),
	star varchar2(10),
	rcont varchar2(200));

create table reviewfile(
	no NUMBER REFERENCES review(rid),
	path varchar2(100),
	fname varchar2(100));
