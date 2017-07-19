drop table MemberInfo cascade constraint;
drop table MktBoard cascade constraint;
drop table OwnerBoard cascade constraint;
drop table QABoard cascade constraint;
drop table Comment_MktBoard cascade constraint;
drop table Comment_OwnerBoard cascade constraint;
drop table Comment_QABoard cascade constraint;
drop table HOTISSUE cascade constraint;
drop table MarketingTrend cascade constraint;

drop sequence MemberInfo_personal_no_seq;
drop sequence FreeBoard_writing_no_seq;
drop sequence QABoard_writing_no_seq;
drop sequence HOTISSUE_writing_no_seq;
drop sequence Comment_FreeBoard_writing_no_seq;
drop sequence Comment_QABoard_writing_no_seq;
drop sequence MarketingTrend_writing_no_seq;

create sequence MemberInfo_personal_no_seq;
create table MemberInfo (
		personal_no			number(4) primary key,
		email						varchar2(25) not null,
		password				varchar2(15) not null,
		callnumber				varchar2(13) not null,
		job						varchar2(10) not null,
		nickname				varchar2(20) not null,
		point						number(4) not null
);

create sequence MktBoard_writing_no_seq;
create table MktBoard (
		writing_no				number(4) primary key,
		title						varchar2(100) not null,
		contents				varchar2(4000) not null,
		nickname				varchar2(20) not null,
		view_no					number(4) not null,
		writing_date			varchar2(20) not null,
		comment_no			number(3) not null,
		business_type		varchar2(10) not null,
		business_size			varchar2(10) not null,
		business_local		varchar2(10) not null
);

create sequence OwnerBoard_writing_no_seq;
create table OwnerBoard (
		writing_no				number(4) primary key,
		title						varchar2(100) not null,
		contents				varchar2(4000) not null,
		nickname				varchar2(20) not null,
		view_no					number(4) not null,
		writing_date			varchar2(20) not null,
		comment_no			number(3) not null,
		business_type		varchar2(10) not null,
		business_size			varchar2(10) not null,
		business_local		varchar2(10) not null
);


create sequence QABoard_writing_no_seq;
create table QABoard (
		writing_no				number(4) primary key,
		title						varchar2(100) not null,
		contents				varchar2(4000) not null,
		nickname				varchar2(20) not null,
		view_no					number(4) not null,
		writing_date			varchar2(20) not null,
		comment_no			number(3) not null,
		point						number(4) not null
);

create sequence Comment_MktBoard_comment_no_seq;
create table Comment_MktBoard (
		comment_no			number(4) primary key,
		writing_no				number(4) not null,
		nickname				varchar2(20) not null,
		writing_date			varchar2(20) not null,
		contents				varchar2(4000) not null
);

create sequence Comment_OwnerBoard_comment_no_seq;
create table Comment_OwnerBoard (
		comment_no			number(4) primary key,
		writing_no				number(4) not null,
		nickname				varchar2(20) not null,
		writing_date			varchar2(20) not null,
		contents				varchar2(4000) not null
);

create sequence Comment_QABoard_comment_no_seq;
create table Comment_QABoard (
		comment_no			number(4) primary key,
		writing_no				number(4) not null,
		nickname				varchar2(20) not null,
		writing_date			varchar2(20) not null,
		contents				varchar2(4000) not null
);

create sequence HOTISSUE_writing_no_seq;
create table HOTISSUE (	
		writing_no			number(4) primary key,
		country				varchar2(20) not null,
		ranking				number(2) not null,
		writing_date		varchar2(20) not null,
		contents			varchar2(4000) not null,
		url						varchar2(200) not null
);

create sequence MarketingTrend_writing_no_seq;
create table MarketingTrend (
		writing_no			number(4) primary key,
		source				varchar2(200) not null,
		title					varchar2(100) not null,
		contents			varchar2(4000) not null
);

ALTER TABLE MktBoard ADD FOREIGN KEY nickname REFERENCES MemberInfo (nickname);
ALTER TABLE OwnerBoard ADD FOREIGN KEY nickname REFERENCES MemberInfo (nickname);
ALTER TABLE QABoard ADD FOREIGN KEY nickname  REFERENCES MemberInfo (nickname);
ALTER TABLE QABoard ADD FOREIGN KEY point REFERENCES MemberInfo (point);
ALTER TABLE Comment_MktBoard ADD FOREIGN KEY writing_no REFERENCES MktBoard (writing_no) ON DELETE CASCADE;
ALTER TABLE Comment_QABoard ADD FOREIGN KEY writing_no REFERENCES QABoard (writing_no) ON DELETE CASCADE;
ALTER TABLE Comment_OwnerBoard ADD FOREIGN KEY writing_no REFERENCES OwnerBoard (writing_no) ON DELETE CASCADE;