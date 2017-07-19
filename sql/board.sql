
alter table board drop primary key cascade;
drop table board;
CREATE Sequence board_no_seq;
CREATE TABLE board(
	no NUMBER(30) PRIMARY KEY,
	type VARCHAR2(30) NOT NULL,
	title VARCHAR2(50) NOT NULL,
	name VARCHAR2(50) NOT NULL,
	wdate VARCHAR2(50) default sysdate,
	count NUMBER(30) default 0,
	comments NUMBER(30) default 0,
	loc VARCHAR2(30) NOT NULL,
	scale VARCHAR2(30) NOT NULL,
	content VARCHAR2(500)
);

alter table comments drop primary key cascade;
drop table comments;
CREATE Sequence comments_no_seq;
CREATE TABLE comments(
	no NUMBER(30) PRIMARY KEY,
	content VARCHAR2(500) NOT NULL,
	boardNo NUMBER(30) 
);
commit;

