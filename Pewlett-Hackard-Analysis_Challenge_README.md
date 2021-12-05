# Pewlett-Hackard-Analysis

## Overview
The Pewlett-Hackard analysis started with the creation of a database from six tables from CSV files. The database was used to determine the "silver tsunami" since many current employees are reaching their retirement age. The analysis includes the number of retiring employees per title and employees who are elgible to participate in the mentorship program.

## Results
![Retiring Titles](../Images/retiring_titles.png)
- Approximately 64% of the retiring employees are senior staff: Senior Engineer (33%) and Senior Staff (31%). This means that a significant portion of the retiring employees have a great wealth of knowledge in their respective departments. It will be difficult to replace that many senior staff.

![Retiring Managers](../Images/emp_no_of_retiring_managers.png)
- Two managers are retiring. According to the manager_info table, there are a total of seven managers. However, five managers in the database have already left the company. This means that there will be no managers left in the company. 

![Retiring Managers](../Images/mentor_elgible.png)
- 1,549 employees are elgibile for the mentorship program. Although this number seems optimistic, two factors will need to be considered: 1) How many roles will need to be filled? 2) How many mentor-eligible employees would actually participate in the mentorship program?

- The ratio of retiring employees (90,398) to mentor-eligible employees (1,549) is very high. It will be difficult to replace a large number of employees with a great wealth of knowledge, and having enough mentor-eligible employees to mentor new employees.

## Summary
- 90,398 roles will need to be filled as the "silver tsunami" begins to make an impact.
- If the 64% of the retiring employees that are senior staff plan to stick around to mentor the next generation of employees, then Pewlett Hackard should be in good hands for the transition. However, the analysis did not consider "qualified, retirement-ready employees" as mentor-eligible. Mentor-eligible were determined to be employees with birth dates in the year of 1965. If only these employees were considered, then Pewlett Hackard does not seem to be ready for the "silver tsunami". 

![Number of mentor eligible employees by title](../Images/mentor_elgible_by_title.png)
In summary, 90,398 employees at Pewlett Hackard are eligible to retire. However, only 1,549 employees are eligible for the mentorship program. Of the 1,549 employees, only 412 and 288 employees are Senior Staff and Senior Engineers, respectively. To compare with the retiring employees, there are 28,254 and 29,414 employees that are Senior Staff and Senior Engineers, respectively. It is assumed that senior staff would be able to mentor most title positions in the same department. If this is the case, there may not be enough mentors for te new generation of employees.

![Number of mentor eligible employees by title](../Images/retiring_emp_by_dept.png)
![Number of mentor eligible employees by title](../Images/mentor_eligible_by_dept)
Breaking it down by department and how each department may be affected: 
The Development (26%), Production (21%), and Sales (16%) departments will be most affected by the "silver tsunami". On a positive note, these three departments have the highest number of mentor-eligible employees: Development (26%), Production (21%), and Sales (16%). However, the percentages do not mean much since, for example, but not limited to, there are approximately 5,864% more retiring employees in the Development department than there are eligible mentors in the same deparmtent. 


