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

