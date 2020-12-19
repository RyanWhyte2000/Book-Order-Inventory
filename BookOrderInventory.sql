create database dblabtest11am1800715;
use  dblabtest11am1800715;


/**********TAHK 1*************************/
/* Student(id, fname, lname, gender, dob, mail,number)

Book( bookid, name, fee)

bookorder(id, fname, lname, name, issuedate, returndate, bname)

foreign key lname, fname references student
foreign key bname references book



*/
create table student(
id int primary key,
fname varchar(25) not null,
lname varchar(25) not null,
gender char(1),
dob date,
mail varchar(30) null,
number int not null

);

select* from student




create table bookOrder(
ID int  identity(1,1) primary key,
fname varchar(25),
lname varchar(25),
name varchar(50),
issuedate date not null,
returndate date,
bname varchar(50),

constraint kbook Foreign key(bname) references book(name),
constraint knok Foreign key(fname, lname) references student(fname, lname),
constraint pk_bookordered primary key(ID, fname, lname, issuedate, bname
);







create table book(

bookid varchar(5)primary key,
name varchar(50) not null,
fee money
);

alter table student
add mobileProvider varchar(24) 


/********************TASK2*******************************************/

insert into student values( 2001, 'john','doe','M', '01/01/85', 'jd@email.com', 8996578,  'Lime' );
insert into student values( 2002, 'jane','doe','f', '03/05/89', 'jane@email.com', 8993433,  'digicel');
insert into student values( 1988, 'mary','Smith','f', '02/15/90', null, 3326752,  'digicel');
insert into student values( 1990, 'Mark ','Brown','M', '02/20/87','mb2email.com',4329786,  'Lime');




insert into book values('hp100','Harry Potter', 1200)
insert into book values('ad234','Angels and demons', 600)
insert into book values('dc200','davinci code', 600)
insert into book values('mb400','The mocking bird', 200)
insert into book values('ma234','Macbeth', 350)


insert into bookorder values(' John', 'Doe','01/10/14', '01/11/14', 'Macbeth, The mocking bird')
insert into bookorder values(' Jane', 'Doe','03/08/14', '08/08/14','davinci code')
insert into bookorder values(' Mary', 'Smith','01/11/14', null,'Harry Potter,Macbeth')
insert into bookorder values(' John ', 'Doe','07/11/14', null,'Macbeth')



insert into student(id, fname, lname)values(4589,'mark', 'myrie')
insert into student(id, fname, lname)values(4588,'markus', 'myrie')
insert into student(id, fname, lname)values(4587,'markyann', 'myrie')
insert into student(id, fname, lname)values(4586,'markell', 'fultz')



insert into book(bookid, name)values('gh345','Happy town')
insert into book(bookid, name)values('qh345','catville')
insert into book(bookid, name)values('hj345','iceee')
insert into book(bookid, name)values('rs345','run shop')


insert into bookorder(fname, lname,issuedate) values(' John', 'Doe','01/10/14')
insert into bookorder(fname, lname,issuedate) values(' John', 'Doe','01/10/14')
insert into bookorder(fname, lname,issuedate) values(' John', 'Doe','01/10/14')
insert into bookorder(fname, lname,issuedate) values(' John', 'Doe','01/10/14')



insert into book values('mb800','The bird', 900)
insert into book values('ma884','Mall', 390)

update student set mobileprovider= 'digicel' 
where number like '8%' 

update student set mobileprovider= 'flow' 
where number not like '8%' 


select * from student
where fname = '%o%' or lname ='%o%'


select fname, lname from student
where gender = 'f'

select fname, lname, dob from student
order by dob desc, lname asc

delete from book where bookid = 'mb800'
/********************TASK3*******************************************/

select S.fname, S.lname ,B.ID
from student S
inner join bookOrder B
on B.lname = S.lname

select S.id,S.fname, S.lname ,B.ID
from student S
inner join (select bname from bookOrder where  B
on B.lname = S.lname



/********************TASK4*******************************************/
select fname, lname, (fee * bname) as total from bookOrder

select avg(total)as Averageamount from bookOrder

select bookid, name, fee , ((0.10*fee)+ fee)as increasedfee from book




