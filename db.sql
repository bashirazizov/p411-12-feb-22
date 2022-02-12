--alter table Cities add Population int

--update Students set Email = 'test@test.az'
--where Id = 4

--create table Teachers(
--	Id int identity primary key,
--	Fullname nvarchar(100),
--	Email nvarchar(100) unique
--)

--create table Groups(
--	Id int identity primary key,
--	Name nvarchar(15),
--	StudentCount int default 0,
--	MaxStudents int check(MaxStudents<=18),
--	TeacherId int references Teachers(Id)
--)

--create table Students(
--	Id int identity primary key,
--	Fullname nvarchar(100),
--	Email nvarchar(100) unique,
--	GroupId int references Groups(Id)
--)

--select * from Students

--select * from Students
--where GroupId = 2

--select * from Students
--where GroupId = (select Id from Groups where Name = 'p211')

--select * from Students
--where Fullname like '%a%'

--select stu.Fullname 'SName',stu.Email 'SEmail', gr.Name 'GName', tc.Fullname 'TName' from Students as stu 
--join Groups as gr
--on gr.Id = stu.GroupId
--inner join Teachers as tc
--on tc.Id = gr.TeacherId


--select * from Students
--left join Groups
--on Groups.Id = Students.GroupId

--select * from Students
--right join Groups
--on Groups.Id = Students.GroupId

--select * from Students
--full join Groups
--on Groups.Id = Students.GroupId

--create table Countries(
--	Id int identity primary key,
--	Name nvarchar(100)
--)

--create table Cities(
--	Id int identity primary key,
--	Name nvarchar(100),
--	CountryId int references Countries(Id)
--)

--select * from Cities
--join Countries on Cities.CountryId = Countries.Id


--create table Positions(
--	Id int identity primary key,
--	Name nvarchar(100),
--	DreportId int
--)

--select p1.Name 'Position', p2.Name 'Reports to' from Positions as p1
--join Positions as p2
--on p1.DreportId = p2.Id


--create table Grades(
--	Id int identity primary key,
--	Mark char,
--	MaxScore int check(MaxScore<=100),
--	MinScore int check(MinScore>=0)
--)

--alter table Students add Score int

--select Fullname, Email, Mark  from Students
--join Grades 
--on Students.Score Between Grades.MinScore and Grades.MaxScore


--create table Sizes(
--	Id int identity primary key,
--	Size nvarchar(5)
--)

--create table ClothingProducts(
--	Id int identity primary key,
--	Name nvarchar(250)
--)

--exec sp_rename Sizes, ClothingSizes


--select * from ClothingProducts
--cross join ClothingSizes


--create table UniTeachers(
--	Id int identity primary key,
--	FullName nvarchar(250),
--	Email nvarchar(250) unique,
--)

--create table UniGroups(
--	Id int identity primary key,
--	Name nvarchar(250)
--)

--create table UniStudents(
--	Id int identity primary key,
--	Fullname nvarchar(100),
--	Email nvarchar(100) unique,
--	UniGroupId int references UniGroups(Id)
--)

--create table UniCourses(
--	Id int identity primary key,
--	Name nvarchar(250),
--	Subject nvarchar(250),
--	StartDate datetime,
--	EndDate datetime,
--	UniGroupId int references UniGroups(Id),
--	UniTeacherId int references UniTeachers(Id)
--)

--alter table UniCourses drop column StartDate, EndDate, Subject


--select uc.Name 'Lesson', ut.FullName 'TName', ug.Name 'GName' from UniCourses as uc
--join UniTeachers as ut
--on ut.Id = uc.UniTeacherId
--join UniGroups as ug
--on ug.Id = uc.UniGroupId