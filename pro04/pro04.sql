alter table board add (visited int default 0);
select*from board;

desc member;

insert into member VALUES('art', '1234', '아트', 'art@naver.com', '010-5252-2525', sysdate);
select * from member;

insert into board values((select nvl(max(no), 0)+1 from board),'샘플글 제목','샘플글 내용','강병수',sysdate,0);

desc board;