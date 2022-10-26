/*이벤트 테이블*/
CREATE TABLE event(
	evid NUMBER PRIMARY key,
	evname varchar2(100),
	contents varchar2(200),
	pNum NUMBER,
	span1 DATE,
	span2 DATE,
	span3 DATE,
	prize varchar2(50),
	image varchar2(100));

/*이벤트 시퀀스*/
CREATE SEQUENCE event_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999
	nocycle;

INSERT INTO event values(event_seq.nextval, '오픈기념 펜더 프로페셔널2 일렉기타 증정 이벤트', 
'기타리스트 사이트 오픈 기념으로 당첨자에게 펜더사의 프로페셔널2 일렉 기타를 증정합니다. (색상 랜덤)',2,
to_date('2022-07-01','YYYY-MM_DD'),to_date('2022-07-31','YYYY-MM-DD'),to_date('2022-08-15','YYYY-MM-DD'),'펜더 프로페셔널2 일렉 기타','images/image01.jpg');
INSERT INTO event values(event_seq.nextval, '1주년 기념 깁슨 레스폴 트리뷰트 증정 이벤트', 
'기타리스트 사이트 오픈 1주년 기념으로 당첨자에게 깁슨사의 레스폴 트리뷰트를 증정합니다. (색상 랜덤)',1,
to_date('2023-07-01','YYYY-MM_DD'),to_date('2023-07-31','YYYY-MM-DD'),to_date('2023-08-15','YYYY-MM-DD'),'깁슨 레스폴 트리뷰트','images/image02.jpg');



/*이벤트 응모*/
CREATE SEQUENCE draw_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 01
	MAXVALUE 9999
	nocycle;


CREATE TABLE draw(
	draw_number NUMBER,
	event_id varchar2(100),
	user_id varchar2(100));