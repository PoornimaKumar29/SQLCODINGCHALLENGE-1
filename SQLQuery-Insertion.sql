-- Insert data into Companies Table
INSERT INTO companies (company_name, location) VALUES
('Google', 'Bangalore'),
('Microsoft', 'Hyderabad'),
('Amazon', 'Chennai'),
('Facebook', 'Mumbai'),
('Apple', 'Pune'),
('TCS', 'Delhi'),
('Infosys', 'Bangalore'),
('Wipro', 'Hyderabad'),
('Cognizant', 'Chennai'),
('Capgemini', 'Mumbai'),
('Accenture', 'Pune'),
('HCL', 'Delhi'),
('IBM', 'Bangalore'),
('Oracle', 'Hyderabad'),
('Tech Mahindra', 'Chennai');

-- Insert data into Jobs Table
INSERT INTO Jobs (Company_Id, Job_Title, Job_Description, Job_Location, Salary, Job_Type, Posted_Date)
VALUES 
(1, 'Software Engineer', 'Develop and maintain software solutions.', 'Chennai', 75000.00, 'Full-time', '2024-02-01 09:30:00'),
(2, 'Data Analyst', 'Analyze and interpret complex data sets.', 'Bangalore', 65000.00, 'Full-time', '2024-02-05 10:45:30'),
(3, 'Frontend Developer', 'Build user-friendly web interfaces.', 'Hyderabad', 70000.00, 'Full-time', '2024-02-10 14:20:15'),
(4, 'Backend Developer', 'Develop and optimize backend services.', 'Pune', 80000.00, 'Full-time', '2024-02-15 16:40:00'),
(5, 'HR Manager', 'Manage recruitment and employee relations.', 'Delhi', 60000.00, 'Full-time', '2024-02-20 08:10:25'),
(6, 'Marketing Executive', 'Plan and execute marketing campaigns.', 'Mumbai', 55000.00, 'Full-time', '2024-02-25 12:30:45'),
(7, 'Cybersecurity Analyst', 'Protect systems from cyber threats.', 'Chennai', 85000.00, 'Full-time', '2024-03-01 11:15:10'),
(8, 'Project Manager', 'Oversee project timelines and budgets.', 'Bangalore', 90000.00, 'Full-time', '2024-03-05 15:25:20'),
(9, 'Network Engineer', 'Maintain and troubleshoot network systems.', 'Hyderabad', 75000.00, 'Full-time', '2024-03-10 09:50:30'),
(10, 'UX Designer', 'Create intuitive and attractive user experiences.', 'Pune', 68000.00, 'Full-time', '2024-03-15 13:40:55'),
(11, 'Cloud Engineer', 'Develop and manage cloud-based solutions.', 'Delhi', 95000.00, 'Full-time', '2024-03-20 10:05:40'),
(12, 'AI Engineer', 'Build and optimize AI-powered applications.', 'Mumbai', 100000.00, 'Full-time', '2024-03-25 16:55:25'),
(13, 'Content Writer', 'Create engaging and informative content.', 'Chennai', 48000.00, 'Part-time', '2024-03-30 08:45:10'),
(14, 'Technical Support', 'Provide technical assistance to customers.', 'Bangalore', 52000.00, 'Full-time', '2024-04-05 14:15:35'),
(15, 'Business Analyst', 'Analyze business data and provide insights.', 'Hyderabad', 72000.00, 'Contract', '2024-04-10 12:20:50');

-- Insert data into Applicants Table
INSERT INTO applicants (first_name, last_name, email, phone, resume) VALUES
('Rahul', 'Sharma', 'rahul@example.com', 9876543210, 'resume1.pdf'),
('Priya', 'Singh', 'priya@example.com', 8765432109, 'resume2.pdf'),
('Amit', 'Kumar', 'amit@example.com', 7654321098, 'resume3.pdf'),
('Neha', 'Verma', 'neha@example.com', 6543210987, 'resume4.pdf'),
('Vikram', 'Patel', 'vikram@example.com', 5432109876, 'resume5.pdf'),
('Sneha', 'Reddy', 'sneha@example.com', 4321098765, 'resume6.pdf'),
('Arjun', 'Das', 'arjun@example.com', 3210987654, 'resume7.pdf'),
('Kavita', 'Yadav', 'kavita@example.com', 2109876543, 'resume8.pdf'),
('Raj', 'Mehta', 'raj@example.com', 1098765432, 'resume9.pdf'),
('Pooja', 'Iyer', 'pooja@example.com', 9988776655, 'resume10.pdf'),
('Sandeep', 'Goyal', 'sandeep@example.com', 8877665544, 'resume11.pdf'),
('Manisha', 'Rana', 'manisha@example.com', 7766554433, 'resume12.pdf'),
('Karthik', 'Nair', 'karthik@example.com', 6655443322, 'resume13.pdf'),
('Meera', 'Joshi', 'meera@example.com', 5544332211, 'resume14.pdf'),
('Rohit', 'Kapoor', 'rohit@example.com', 4433221100, 'resume15.pdf');

-- Insert data into Applications Table
INSERT INTO Applications (Job_Id, Applicant_Id, Application_Date, Cover_Letter)
VALUES 
(1, 2, '2024-03-01 10:15:30', 'Excited to apply for this role!'),
(2, 3, '2024-03-05 14:30:00', 'Looking forward to this opportunity.'),
(3, 1, '2024-03-10 09:45:15', 'Passionate about contributing to this company.'),
(4, 5, '2024-03-12 16:20:40', 'Eager to bring my skills to this job.'),
(5, 4, '2024-03-15 11:10:05', 'I am a great fit for this role.'),
(6, 6, '2024-03-18 08:00:20', 'Hope to be considered for this job.'),
(7, 7, '2024-03-20 12:50:45', 'Strong background in related skills.'),
(8, 8, '2024-03-22 17:35:30', 'Looking forward to an interview.'),
(9, 9, '2024-03-25 13:15:10', 'Confident in my abilities for this position.'),
(10, 10, '2024-03-28 15:40:55', 'Excited to contribute to your team.'),
(11, 11, '2024-04-02 09:20:30', 'Great opportunity for my career.'),
(12, 12, '2024-04-05 10:55:45', 'Bringing valuable experience to the table.'),
(13, 13, '2024-04-08 14:05:25', 'I believe I can excel in this role.'),
(14, 14, '2024-04-12 18:30:00', 'Motivated and ready to join.'),
(15, 15, '2024-04-15 16:45:50', 'Looking forward to this job journey.');
