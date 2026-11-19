
# DATABASE TABLE CREATION

create database LibraryDB;
use LibraryDB;


# LIBRARY DATA MANAGEMENT

create table Books(BookID int primary key, Title varchar(100), Author varchar(100), PublicationYear year, Genre varchar(80));
create table Members(MemberID int primary key, FirstName varchar(50), LastName varchar(50), Email varchar(150), MembershipDate date);
create table Loans(LoanID int primary key, BookId int, MemberId int, LoanDate date, ReturnDate date, foreign key(BookId) references Books(BookID), foreign key(MemberId) references Members(MemberID));
create table Authors(AuthorID int primary key, AuthorName varchar(100), BirthYear year);
create table BookAuthors(Bookid int, Authorid int, foreign key(Bookid) references Books(BookID), Foreign key(Authorid) references Authors(AuthorID));
create table Fines(FineID int primary key, LoanId int, FineAmount dec(10,2), PaidDate date, foreign key(LoanId) references Loans(LoanID));


INSERT INTO Books VALUES
(1, 'Introduction to Science', 'John Smith', 1995, 'Science'),
(2, 'Data Science Fundamentals', 'Emily Brown', 2021, 'Technology'),
(3, 'Physics for Beginners', 'Robert Wilson', 1998, 'Science'),
(4, 'Database Management Systems', 'Korth', 2019, 'Technology'),
(5, 'Artificial Intelligence', 'Peter Norvig', 2022, 'Technology'),
(6, 'History of India', 'Ramesh Sharma', 1985, 'History'),
(7, 'Computer Science Basics', 'David Miller', 2005, 'Technology'),
(8, 'Advanced Mathematics', 'Alan Cooper', 2018, 'Mathematics'),
(9, 'Environmental Science', 'Sarah Johnson', 2001, 'Science'),
(10, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
(11, 'Machine Learning', 'Tom Mitchell', 2017, 'Technology'),
(12, 'World History', 'Michael Clark', 1999, 'History'),
(13, 'Chemistry Essentials', 'James Anderson', 1997, 'Science'),
(14, 'Python Programming', 'Mark Lee', 2023, 'Programming'),
(15, 'Modern Economics', 'Daniel White', 2015, 'Economics');
select * from Books;

INSERT INTO Members VALUES
(1, 'Aarav', 'Shah', 'aarav@gmail.com', '2023-01-10'),
(2, 'Priya', 'Patel', 'priya@gmail.com', '2023-02-15'),
(3, 'Rahul', 'Mehta', 'rahul@gmail.com', '2023-03-20'),
(4, 'Sneha', 'Joshi', 'sneha@gmail.com', '2023-04-05'),
(5, 'Rohan', 'Desai', 'rohan@gmail.com', '2023-05-12'),
(6, 'Ananya', 'Rao', 'ananya@gmail.com', '2024-01-10'),
(7, 'Karan', 'Sharma', 'karan@gmail.com', '2024-02-18'),
(8, 'Neha', 'Patil', 'neha@gmail.com', '2024-03-25'),
(9, 'Vikram', 'Gupta', 'vikram@gmail.com', '2024-04-12'),
(10, 'Isha', 'Nair', 'isha@gmail.com', '2024-05-20');
select * from Members;

INSERT INTO Authors VALUES
(1, 'John Smith', 1960),
(2, 'Emily Brown', 1985),
(3, 'Robert Wilson', 1955),
(4, 'Korth', 1975),
(5, 'Peter Norvig', 1956),
(6, 'Ramesh Sharma', 1980),
(7, 'David Miller', 1990),
(8, 'Alan Cooper', 1965),
(9, 'Sarah Johnson', 1988),
(10, 'Tom Mitchell', 1943);
select * from Authors;

INSERT INTO Loans VALUES
(1, 1, 1, '2024-01-05', '2024-01-15'),
(2, 2, 1, '2024-02-10', '2024-02-20'),
(3, 3, 1, '2024-03-12', '2024-03-22'),
(4, 4, 1, '2024-04-15', '2024-04-25'),
(5, 5, 1, '2024-05-10', '2024-05-20'),
(6, 6, 1, '2024-06-01', '2024-06-11'),
(7, 7, 2, '2024-01-08', '2024-01-18'),
(8, 8, 2, '2024-02-14', '2024-02-24'),
(9, 9, 2, '2024-03-16', '2024-03-26'),
(10, 10, 2, '2024-04-20', '2024-04-30'),
(11, 11, 2, '2024-05-15', '2024-05-25'),
(12, 12, 2, '2024-06-10', '2024-06-20'),
(13, 1, 3, '2024-07-01', '2024-07-11'),
(14, 2, 3, '2024-07-05', '2024-07-15'),
(15, 3, 4, '2024-07-10', '2024-07-20'),
(16, 4, 4, '2024-07-15', '2024-07-25'),
(17, 5, 5, '2024-08-01', '2024-08-11'),
(18, 6, 5, '2024-08-05', '2024-08-15'),
(19, 7, 6, '2024-08-10', '2024-08-20'),
(20, 8, 6, '2024-08-15', '2024-08-25'),
(21, 9, 7, '2024-09-01', NULL),
(22, 10, 8, '2024-09-05', NULL),
(23, 11, 9, '2024-09-10', NULL),
(24, 12, 10, '2024-09-15', NULL),
(25, 2, 3, '2024-10-01', NULL);
select * from Loans;

INSERT INTO BookAuthors VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 10),
(12, 6),
(13, 1),
(14, 7),
(15, 2);
select * from BookAuthors;

INSERT INTO Fines VALUES
(1, 1, 5.00, '2024-01-16'),
(2, 2, 8.00, '2024-02-21'),
(3, 3, 12.00, '2024-03-23'),
(4, 3, 5.00, '2024-03-25'),
(5, 4, 15.00, '2024-04-26'),
(6, 5, 7.00, '2024-05-21'),
(7, 7, 20.00, '2024-01-19'),
(8, 8, 4.00, '2024-02-25'),
(9, 9, 11.00, '2024-03-27'),
(10, 10, 6.00, '2024-05-01'),
(11, 13, 18.00, '2024-07-12'),
(12, 17, 25.00, '2024-08-12');
select * from Fines;


# Identify older publications for reviewing and updating the library's book collection.
select * from Books where PublicationYear < 2000;
 

# Identify books borrowed in 2024 that are still pending return for follow-up.
select * from Loans where year(LoanDate)= 2024 and ReturnDate is null;


# Identify Science-related books to analyze subject-wise collection availability.
select * from Books where title like "%science%";


# Monitor book availability to help members identify books ready for borrowing.
alter table Books add column Availability varchar(40);
update Books set Availability= case
when BookID in (select BookID from Loans where ReturnDate is null) then "Checked Out"
else "Available"
end;
select * from Books;


# Identify members with high borrowing activity to understand member engagement.
select * from Members where MemberID in (select MemberID from loans group by MemberID having count(BookID) > 5);


# Analyze member-wise borrowing activity to understand library usage patterns.
select MemberID, count(BookID) "TotalBooksBorrowed" from Loans group by MemberID;


# Identify loans with accumulated fines above $10 for financial monitoring.
select LoanID, sum(FineAmount) "TotalFineAmount" from Fines group by LoanID having sum(FineAmount)> 10;


# Identify the most frequently borrowed books to understand reader preferences and demand.
select BookID,count(MemberID) "BORROWED_BOOKS" from Loans group by BookID order by count(MemberID) desc limit 5;


# Track book borrowing and return transactions for better loan management.
select Title,LoanDate,ReturnDate from Loans join Books using (BookID);


# Identify books that have never been borrowed for reviewing library inventory utilization.
select Title,MemberID from Books left outer join Loans using (BookID);


# Analyze the number of books associated with each author to understand collection distribution.
select Authorid,count(Bookid) "Total_Books_Written" from Books join BookAuthors using (BookID) group by Authorid;


# Identify books written by authors born after 1970 for author-based collection analysis.
select Bookid,Authorid,BirthYear from BookAuthors join Authors using (AuthorId) where AuthorID in 
(select AuthorID from Authors where BirthYear>1970);


# Identify books with recorded fines to monitor fine transactions and improve financial tracking.
select Title,AuthorName,FineAmount from Books join BookAuthors using(BookID) 
join Authors using (AuthorID) join Loans using (BookID) join Fines using (LoanID);
