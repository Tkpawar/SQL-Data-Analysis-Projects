/*
# 1) Count the number of students for that particular Teacher
select  s.Name,t.Teachers_Name, count(s.Name) as number_of_students from students as s join teachers  as t
on s.Teachers_Name =  t.Tr_Id
group by t.Teachers_Name
*/
/*
#2) How many Students Belong to same courses--
Select c.Course_Name,count(s.St_Id) as total_students from students s join course as c
on s.Course_Name= c.Cr_Id
group by c.Course_Name
order by total_students desc
 */
 
 #3) How many students take the course by gender
 select Cr_du_Id, min(Course_Duration) as min_d from course_period

 
 
 
 