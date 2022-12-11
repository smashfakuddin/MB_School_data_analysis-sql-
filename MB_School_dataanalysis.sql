--total offered Degree
SELECT
	DISTINCT "Undergrad Degree"
FROM
	Maven_Business_School mbs
	
--total student per offered degree
select
	"Undergrad Degree" ,
	COUNT(*) as total_student
FROM
	Maven_Business_School mbs
group by
	"Undergrad Degree"
ORDER BY
	2 DESC
	
--Highest offered degree which have most job "Work Experience" 
SELECT
	"Undergrad Degree",
	COUNT(*) as Total_student
FROM
	Maven_Business_School mbs
WHERE
	"Work Experience" = 'Yes'
GROUP BY
	"Undergrad Degree"
order by
	2 DESC
	
--highest offered degree which have least job "Work Experience"
SELECT
	"Undergrad Degree",
	COUNT(*) as Total_student
FROM
	Maven_Business_School mbs
WHERE
	"Work Experience" = 'No'
GROUP BY
	"Undergrad Degree"
order by
	2 DESC 

--employability before join on offered degree
SELECT
	"Undergrad Degree" ,
	COUNT(*) total
FROM
	Maven_Business_School mbs
WHERE
	"Employability (Before)" > "Employability (After)"
GROUP BY "Undergrad Degree" 
order by 2 DESC 

--total job placement
SELECT
	"Undergrad Degree" ,
	Status ,
	COUNT(*) as total
FROM
	Maven_Business_School mbs
group by
	"Undergrad Degree" ,
	Status

--	total student who got more gpa in MBA then "Undergrad Degree" and Their placement status 
SELECT
	"Undergrad Degree" ,
	COUNT(*) as total_student ,
	Status
FROM
	Maven_Business_School mbs
WHERE
	"MBA Grade" > "Undergrad Grade"
GROUP BY
	1
HAVING
	Status = "Placed" or Status = 'Not Placed'
ORDER BY
	2 DESC 


--total student job placement with and without job experience
SELECT
	"Undergrad Degree" ,
	COUNT(*) as total,
	Status,
	"Work Experience"
FROM
	Maven_Business_School mbs
WHERE
	"Work Experience" = 'No'
	and Status = 'Placed'
	or "Work Experience" = 'Yes'
	and Status = 'Not Placed'
GROUP BY
	1,
	3
ORDER BY
	2 DESC
	
-- effect on employeblity
SELECT "Undergrad Degree",
	COUNT(*) as Total_student
from
	Maven_Business_School mbs
WHERE
	"Employability (Before)" > "Employability (After)"
GROUP BY
	1
	ORDER BY 2 DESC 
	
	