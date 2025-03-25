--5.Write an SQL query to count the number of applications received for each job listing in the
--"Jobs" table. Display the job title and the corresponding application count. Ensure that it lists all
--jobs, even if they have no applications

select j.job_title, count(a.Application_Id) from Jobs j
join applications a on a.job_id=j.job_id
group by j.job_title
--6.Develop an SQL query that retrieves job listings from the "Jobs" table within a specified salary
--range. Allow parameters for the minimum and maximum salary values. Display the job title,
--company name, location, and salary for each matching job.

declare @minval decimal(10,2)=75000
declare @maxval decimal(10,2) =95000
select  c.company_name ,j.job_title , j.job_location ,j.salary from companies c
join jobs j on j.company_id =c.company_id
where j.salary between @minval and @maxval

--7. Write an SQL query that retrieves the job application history for a specific applicant. Allow a
--parameter for the ApplicantID, and return a result set with the job titles, company names, and
--application dates for all the jobs the applicant has applied to
select j.Job_Id,j.Job_Title,c.company_name , a.Application_Date from  jobs j
join Companies c on c.Company_Id=j.Company_Id
join Applications a on j.Job_Id=a.Job_Id
join Applicants ap on ap.Applicant_Id=a.Applicant_Id
where ap.Applicant_Id=5

--8. Create an SQL query that calculates and displays the average salary offered by all companies for
--job listings in the "Jobs" table. Ensure that the query filters out jobs with a salary of zero
select c.company_name ,avg(j.Salary) as average_salary from jobs j
join companies c on c.company_id = j.company_id
where j.salary>0
group by c.company_name

--9. Write an SQL query to identify the company that has posted the most job listings. Display the
--company name along with the count of job listings they have posted. Handle ties if multiple
--companies have the same maximum count.
select top 1 with ties c.company_id , c.company_name, j.Company_Id , 
count(j.job_id)as Highest_jobpost from jobs j
join Companies c on c.Company_Id=j.Company_Id
group by c.company_id , c.company_name, j.Company_Id 
order by Highest_jobpost desc
select * from Applicants

--10. Find the applicants who have applied for positions in companies located in 'CityX' and have at
--least 3 years of experience

ALTER TABLE applicants ADD experience INT;
UPDATE applicants SET experience = 5 WHERE applicant_id = 1;
UPDATE applicants SET experience = 3 WHERE applicant_id = 2;
UPDATE applicants SET experience = 7 WHERE applicant_id = 3;
UPDATE applicants SET experience = 2 WHERE applicant_id = 4;
UPDATE applicants SET experience = 4 WHERE applicant_id = 5;
--10.
select  a.* from Applicants a
join Applications ap on ap.Applicant_Id=a.Applicant_Id
join jobs j on j.Job_Id=ap.Job_Id
join Companies c on c.Company_Id=j.Company_Id
where c.location='Bangalore' and a.experience=3

--11. Retrieve a list of distinct job titles with salaries between $60,000 and $80,000.
select distinct Job_Title from jobs
where Salary between 700000 and 900000

--12. Find the jobs that have not received any applications

INSERT INTO jobs (company_id, job_title, job_description, job_location, salary, job_type, posted_date)
VALUES
(4, 'Network Engineer', 'Manage and optimize network infrastructure.', 'Hyderabad', 72000, 'Contract', '2025-03-05'),
(5, 'HR Manager', 'Oversee human resources operations.', 'Pune', 65000, 'Full-time', '2025-02-28')

select j.* from jobs j 
left join Applications a on j.Job_Id=a.Job_Id
where a.Applicant_Id is null

--13. Retrieve a list of job applicants along with the companies they have applied to and the positions
--they have applied for.
select a.* from Applicants a
join Applications ap on ap.Applicant_Id=a.Applicant_Id
join jobs j on j.Job_Id=ap.Job_Id
join Companies c on c.Company_Id=j.Company_Id

--14. Retrieve a list of companies along with the count of jobs they have posted, even if they have not
--received any applications
select c.Company_Id ,c.Company_Name ,count(j.job_id) as Job_count from jobs j
join Companies c on j.Company_Id=c.Company_Id
group by c.Company_Id,c.Company_Name

--15. List all applicants along with the companies and positions they have applied for, including those
--who have not applied
select c.company_name , j.Job_title , a.* from Applicants a
join Applications app on app.Applicant_Id=a.Applicant_Id
join jobs j on app.Job_Id=j.Job_Id
join Companies c on c.Company_Id=j.Company_Id

--16. Find companies that have posted jobs with a salary higher than the average salary of all jobs
select c.Company_Id,c.Company_Name ,j.salary from Companies c
join jobs j on c.Company_Id=j.Company_Id
where j.Salary> (select avg(Salary) from jobs)

--17. Display a list of applicants with their names and a concatenated string of their city and state.
ALTER TABLE applicants ADD city VARCHAR(100), state VARCHAR(100)
UPDATE applicants 
SET city = 'Chennai', state = 'Tamil Nadu' WHERE applicant_id = 1;
UPDATE applicants 
SET city = 'Mumbai', state = 'Maharashtra' WHERE applicant_id = 2;
UPDATE applicants 
SET city = 'Bangalore', state = 'Karnataka' WHERE applicant_id = 3;
UPDATE applicants 
SET city = 'Chennai', state = 'Tamil Nadu' 
WHERE city IS NULL OR state IS NULL;

select First_Name,Last_Name , concat(city ,' ',state) as Location from Applicants

--18. Retrieve a list of jobs with titles containing either 'Developer' or 'Engineer'

select Job_Id, Job_Type, Job_Title from Jobs
where Job_Title in ('AI engineer' , 'hr manager')

--19. Retrieve a list of applicants and the jobs they have applied for, including those who have not
--applied and jobs without applicants.
select j.job_title , a.Applicant_Id, a.First_Name from Applicants a
join Applications ap on ap.Applicant_Id=a.Applicant_Id
join Jobs j on j.Job_Id=ap.Job_Id

--20. List all combinations of applicants and companies where the company is in a specific city and the
--applicant has more than 2 years of experience. For example: city=Chennai
select a.* , c.* from Applicants a
join Applications ap on ap.Applicant_Id=a.Applicant_Id
join jobs j on ap.Job_Id=j.Job_Id
join Companies c on c.Company_Id=j.Company_Id
where a.experience> 2 and a.city='chennai'

select * from Companies
select * from jobs
select * from Applicants
select * from Applications
