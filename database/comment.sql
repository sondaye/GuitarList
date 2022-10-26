CREATE TABLE USERCOMMENT (
	id NUMBER PRIMARY KEY,
	userId REFERENCES member(userid),
	postId REFERENCES post(id),
	regno NUMBER DEFAULT 0,
	com_content varchar2(1000),
	createdAt DATE,
	updatedAt DATE,
	recommendation NUMBER  DEFAULT 0,
	hates NUMBER  DEFAULT 0
)
;

DROP TABLE USERCOMMENT;
select * from userComment 
WHERE 1=1
AND postId = 1
ORDER BY createdAt DESC;

CREATE SEQUENCE USERCOMMENT_SEQ;

DROP TABLE usercomment_seq;

INSERT INTO usercomment (id, userId, postId, regno, com_content,createdAt, updatedAt) 
VALUES (usercomment_seq.nextval, 1, 2, 0, '고마워용~', sysdate, sysdate)
;

select * 
from usercomment c, member m, post p
where 1=1
AND postId = 2
AND p.ID = c.POSTID 
AND m.userId = c.userId
;

SELECT c.id, c.REGNO, c.COM_CONTENT, c.CREATEDAT, c.UPDATEDAT, c.recommendation, c.HATES, 
	c.USERID, m.id memberId ,m.NICK, m.STANDARD, m.POINT,
	c.POSTID
FROM USERCOMMENT c, member m, post p
WHERE 1=1
AND m.userId = c.USERID
AND p.id = c.POSTID
AND postId = 2
;
select NVL(count(id), 0) from userComment
where postId = 2;

UPDATE post
set reply_cnt = (
	select NVL(count(id), 0) from userComment
	where postId = 2
)
where id = 2
;