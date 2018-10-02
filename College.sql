Create Database College;
Go

use College;
Go

create table Students
(ID int  identity(1,1)  Primary Key clustered,
FName varchar(10)   Not Null,
LName varchar(10)   Not Null,
SSN int             Not Null,
Address char(25),
City varchar(10),
State varchar(2),
Zip int,
PhoneNumber bigint,
);

insert into dbo.Students (FName, LName, SSN, Address, City, State, Zip, PhoneNumber)
Values ('Elanor', 'Rigby', 300006556, '67 Abbey Road', 'London', 'MA', 21043, 9249675309)

insert into dbo.Students
Values ('Ziggy', 'Stardust', 189658271, '15 Major Tom Way', 'Mars', 'CA', 90210, 7158675309)

insert into dbo.Students
Values ('Jake', 'Elwood', 101311980, '1060 W Addison St', 'Chicago', 'IL', 60613, 3128675309)

Select * from Students


create table Classes
(ID int identity(1,1) Not Null Primary Key Clustered
,Title varchar(20)
,Number int
,Department varchar(20)
,StudentID int Not Null References dbo.Students(ID)
);

insert into Classes
Values ('Organic Chemistry', 303, 'Science', 3)

insert into Classes
Values ('Accounting II', 217, 'Math', 3)

insert into Classes
Values ('Composition I', 112, 'English', 2)

Select * FROM Classes

Update Classes
set StudentID = 2 where Title = 'Organic Chemistry'

Update Classes
set StudentID = 3 where Title = 'Accounting II'

Update Classes
set StudentID = 3 where Title = 'Composition I'


create table Scores
(ID int identity(1,1) Not Null Primary Key Clustered
,Type varchar(10)
,Description varchar(20)
,DateAssigned DateTime
,DateDue DateTime
,DateSubmitted DateTime
,PointsEarned int
,PointsPossible int
,ClassesID int Not Null References dbo.Classes(ID)
);

insert into dbo.Scores (Type, Description, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible, ClassesID)
Values ('HW', 'Modern English essay', '09/15/2018', '10/01/2018', '10/01/2018', 49, 50, 3)

insert into dbo.Scores (Type, Description, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible, ClassesID)
Values ('Quiz', 'Song Lyrics', '09/05/2018', '09/09/2018', '09/09/2018', 10, 10, 4)

insert into dbo.Scores (Type, Description, DateAssigned, DateDue, DateSubmitted, PointsEarned, PointsPossible, ClassesID)
Values ('Lab', 'Hydrocarbons', '09/11/2018', '09/25/2018', '09/25/2018', 96, 100, 1)

select * From Scores
Select * FROM Classes
Select * from Students
