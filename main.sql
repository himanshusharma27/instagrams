show databases;
use u3;
show tables;
create table student(
student_id int , name varchar(45)
);


insert into student values( 101 , 'adam'),
(102 , 'bob') , ( 103 , 'casey');

select * from student;

create table course(
student_id int , course varchar(45)
);

insert into course values(
102 , 'english') , ( 105 , 'math'),
(103 , 'science') , ( 107 , ' cs');

select * from  course;

-- inner join 

select * from student inner join
course on student.student_id =
course.student_id;



-- left join 

select * from student left join 
course on student.student_id = course.student_id;


-- right join

select * from student right join 
course on student.student_id = course.student_id;


-- full join - left union right 

select * from student left join course on student.student_id = course.student_id 
UNION 
select * from student right join course on student.student_id = course.student_id;

use school;

select * from student;

-- case function 

select studentname , marks , 
case 
when marks>= 90 then 'topper'
when marks>= 70 then 'average'
when marks >= 60 then 'good'
else 'fail'
end as LIST_OF_STUDENT
from student;



















