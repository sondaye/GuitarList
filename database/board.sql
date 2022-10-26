SELECT * FROM MEMBER;
SELECT * FROM post;
SELECT * FROM BOARD;
SELECT * FROM likeVo;

select * from (select NVL(max(postLikeId), 0)+1 from LikeVo);
DROP table likeVo;
select NVL(max(postLikeId),0) from LikeVo;
insert into LikeVo (postLikeId , postId, userId, likeCheck)
values((select * from (select NVL(max(postLikeId), 0)+1 from likevo)), 2, 1, 1)
;

SELECT p.id id, title, content, createdAt, updatedAt, recommendation, views, reply_cnt,
			p.userId , m.email, m.id memberId, m.pass, m.name, m.nick, m.standard, m.point,
			p.boardId, b.boardName
			FROM post p, member m, board b
		WHERE 1=1 
		AND m.userId = p.userId
		AND b.id = p.boardId
		AND p.id = 1
;
CREATE TABLE MEMBER (
	userid varchar2(50) PRIMARY KEY,
	email varchar2(50) unique not NULL,
	id varchar2(20) unique not NULL,
	pass varchar2(20) NOT NULL,
	name varchar2(20),
	nick varchar2(20) unique not NULL,
	standard varchar2(100),
	point NUMBER
);

SELECT * FROM member;

DROP TABLE post;
CREATE SEQUENCE member_seq;
CREATE SEQUENCE post_seq;
DROP SEQUENCE member_seq;
DROP SEQUENCE post_seq;

INSERT INTO member (userid,email,id,pass,name,nick)
VALUES (member_seq.nextval, 'martin@naver.com', 'martin123', 
'11112222', 'martin', 'Dr.martin');
SELECT * FROM MEMBER;
WHERE userid = 1;
DROP TABLE board;
DROP SEQUENCE board_seq;
CREATE TABLE board(
	id NUMBER PRIMARY KEY,
	boardName varchar2(50)
);
DROP TABLE board;
DROP SEQUENCE board_seq;
SELECT * FROM board;
CREATE SEQUENCE board_seq;
INSERT INTO board values(board_seq.nextval, '자유 게시판');
INSERT INTO board values(board_seq.nextval, '공지사항');
INSERT INTO board values(board_seq.nextval, '일렉 기타');
CREATE TABLE post(
	id Number PRIMARY KEY,
	userid REFERENCES member(userid),
	boardId REFERENCES board(id),
	title varchar2(60),
	content varchar2(1000),
	createdAt DATE,
	updatedAt DATE,
	recommendation  NUMBER DEFAULT 0, 
	views NUMBER DEFAULT 0,
	reply_cnt NUMBER DEFAULT 0
);
DROP TABLE post;
DROP SEQUENCE post_seq;
CREATE SEQUENCE post_seq;

ALTER TABLE post ADD COLUMN reply_cnt NUMBER DEFAULT 0;

DROP SEQUENCE userComment_seq;
CREATE SEQUENCE userComment_seq;
CREATE TABLE userComment (
	id NUMBER PRIMARY KEY,
	userid REFERENCES member(userid),
	postId REFERENCES post(id),
	content varchar2(300),
	createdAt DATE,
	updatedAt DATE,
	recommendation NUMBER DEFAULT 0,
	hates NUMBER DEFAULT 0
);
DROP TABLE USERCOMMENT;
/*
	private int id;
	private int userid;
	private int postId;
	private String content;
	private Date createdAt;
	private Date updatedAt;
	private int recommendation;
	private int hates;
*/
SELECT c.id id, c.userid ,u.NICKNAME ,u.USERLEVEL ,c.POSTID ,
c.CONTENT ,c.CREATEDAT ,c.UPDATEDAT, c.RECOMMENDATION, c.HATES 
FROM userComment c, member u, POST p 
WHERE p.ID  = c.POSTID
AND u.userid = c.userid 
;

SELECT * FROM post;
/*
INSERT INTO post(id,userid,boardId,title,content,createdAt,updatedAt) 
VALUES (post_seq.nextval, #{userid}, #{boardId}, #{title}, #{content}, sysdate, sysdate);
*/
INSERT INTO post(id,userid,boardId,title,content,createdAt,updatedAt) 
VALUES (post_seq.nextval, 1,1, 'test', 'this is test', sysdate, sysdate);
/*
	private int postId;
	private int userid;
	private String email;
	private String userId;
	private String pass;
	private String userName;
	private String nickName;
	private String level;
	private String userGrade;
	private String point;
	private int boardId;
	private String boardName;
	private String title;
	private String content;
	private Date createdAt; 
	private Date updatedAt;
	private int commendation;
	private int views;
 * */
SELECT * FROM member;
SELECT p.id id, title, content, createdAt, updatedAt, recommendation, views,
p.userid , m.email, m.id memberId, m.pass, m.name, m.nick, m.standard, m.point,
p.boardId, b.boardName
FROM post p, member m, board		 b
WHERE 1=1
AND m.userid = p.userid
AND b.id = p.boardId
;
SELECT * 
FROM member u, board b, post p
WHERE u.userid = p.userid
AND b.id = p.boardId;
SELECT p.id,u.userid,email,userId,pass,username,nickName,userlevel,userGrade
point, p.boardId, boardName,title,content,createdAt,updatedAt,recommendation, views
FROM member u, board b, post p
WHERE u.userid = p.userid
AND b.id = p.boardId
;
SELECT * FROM post;
DROP TABLE userComment;

SELECT * FROM post;

UPDATE post 
	SET views = views+1
	WHERE id = 25
;


SELECT * FROM USERCOMMENT;
INSERT INTO USERCOMMENT(id,userid,postId,content, createdAt, updatedAt) 
VALUES (userComment_seq.nextval, 1,28,'this is test',sysdate,sysdate);

SELECT c.id id, c.userid ,u.NICKNAME ,u.USERLEVEL ,c.POSTID ,c.CONTENT ,
c.CREATEDAT ,c.UPDATEDAT, c.RECOMMENDATION, c.HATES 
FROM userComment c, member u, POST p 
WHERE p.ID  = c.POSTID
AND u.userid = c.userid 
AND p.ID = 28
ORDER BY createdAt DESC;

SELECT p.id id,u.userid ,email,userId,pass,userName,nickName,userLevel, userGrade,
		point, p.boardId, boardName,title,content,createdAt,updatedAt,recommendation,views,reply_cnt
		FROM member u, board b, post p
		WHERE u.userid = p.userid
		AND b.id = p.boardId
		AND p.id = 28;
-- 게시글 좋아요

	
CREATE TABLE LikeVo (
	postLikeId NUMBER PRIMARY KEY,
	postId NUMBER,
	userId varchar2(50),
	likeCheck NUMBER DEFAULT 0
);

DROP TABLE LikeVo;
SELECT * FROM LikeVo;
INSERT INTO POSTLIKE VALUES (1, 1, 'martin', 0);

	SELECT p.id id, title, content, createdAt, updatedAt, recommendation, views, reply_cnt,
	p.userid , m.email, m.id memberId, m.pass, m.name, m.nick, m.standard, m.point,
	p.boardId, b.boardName
	FROM post p, member m, board b
	WHERE 1=1
	AND m.userid = p.userid
	AND b.id = p.boardId
	ORDER BY createdAt DESC
	;
	
	select count(*)
	from LikeVo
	where 1=1
	AND postId = 1 
	AND userId = 1
	;