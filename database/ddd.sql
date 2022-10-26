CREATE TABLE seller (
	sid number PRIMARY KEY,
	sname varchar2(100)
);

CREATE TABLE price (
	sid number REFERENCES seller(sid),
	guitarid varchar2(50) REFERENCES guitar(guitarid),
	price number,
	url varchar2(300),
	CONSTRAINT price_pk PRIMARY KEY (sid, guitarid)
);

CREATE TABLE review1 (
	userid varchar2(50) REFERENCES MEMBER(userid),
	receiptid NUMBER,
	guitarid varchar2(200) REFERENCES guitar(guitarid),
	stars NUMBER,
	usercomment varchar2(200),
	CONSTRAINT review_pk PRIMARY KEY (userid, receiptid, guitarid)
);


CREATE SEQUENCE seller_seq
START WITH 1;

CREATE SEQUENCE review_seq
START WITH 1;
SELECT * FROM guitar;
SELECT * FROM MEMBER;

INSERT INTO MEMBER values(2, 'user222@gmail.com', 'user222', 'pw222', '김철수', '짱구친구', '고급', 0);

INSERT INTO review1 values(1, review_seq.nextval, '1', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '2', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '3', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '4', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '5', 3, null);
INSERT INTO review1 values(1, review_seq.nextval, '6', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '7', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '8', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '9', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '10', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '11', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '12', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '13', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '14', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '15', 5, null);
INSERT INTO review1 values(1, review_seq.nextval, '16', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '17', 4.5, null);
INSERT INTO review1 values(1, review_seq.nextval, '18', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '19', 4, null);
INSERT INTO review1 values(1, review_seq.nextval, '20', 3.5, null);

INSERT INTO review1 values(2, review_seq.nextval, '1', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '3', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '4', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '6', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '7', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '8', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '9', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '11', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '12', 5, null);
INSERT INTO review1 values(2, review_seq.nextval, '14', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '16', 4.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '17', 4, null);
INSERT INTO review1 values(2, review_seq.nextval, '18', 3.5, null);
INSERT INTO review1 values(2, review_seq.nextval, '19', 3, null);

-- 기타 별점순 정렬 (같은별점은 이름순)
SELECT g.guitarid, brand, gname, standard, score
FROM guitar g, (
	SELECT guitarid, avg(stars) score
	FROM review1
	GROUP BY guitarid
) r
WHERE g.guitarid = r.guitarid
ORDER BY score desc, gname;
