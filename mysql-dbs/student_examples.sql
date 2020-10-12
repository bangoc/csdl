select Name from StudentDB.Student;

select * from StudentDB.Student where suburb = "Bundoora";

select id, name, suburb, course
from StudentDB.Student, StudentDB.Enrol
where Student.Id = Enrol.SID;

select distinct Dept
from StudentDB.Course;

select Name
from StudentDB.Student
order by Name ASC;

select Suburb, Count(id)
from StudentDB.Student
group by Suburb;

select distinct S.Name
from StudentDB.Subject as S
left join StudentDB.Takes as T on
  S.No = T.SNO
where T.SNO is null;

select Name , (select count(SID) from Takes where Takes.SNO = NO)
from Subject;

insert into StudentDB.Student
values (1179, "David", "Evr");

update StudentDB.Student
set Name="Beck", Suburb="London"
where Id=1179;

delete from StudentDB.Student
where Id = 1179;

