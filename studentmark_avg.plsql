create table student(rollno number,name varchar(30),m1 number,m2 number,m3 number,tot_marks number);
create table gradea(rollno number, name varchar(30),tot_marks number);
create table gradeb(rollno number, name varchar(30),tot_marks number);
create table gradec(rollno number, name varchar(30),tot_marks number);

declare
rollno number:=&rollno;
name varchar(30):='&name';
m1 number:=&m1;
m2 number:=&m2;
m3 number:=&m3;
tot_marks number;
begin
tot_marks:=(m1+m2+m3)/3;
insert into student values(rollno,name,m1,m2,m3,tot_marks);
IF tot_marks>75 THEN
insert into gradea values(rollno,name,tot_marks);
ELSIF tot_marks>60 THEN
insert into gradeb values(rollno,name,tot_marks);
ELSE
insert into gradec values(rollno,name,tot_marks);
END IF;
end;
/
