--Top-paying jobs for data analyst role
with top_paying_jobs as (
select job_id,
job_title,
salary_year_avg,
name as company_name
 from job_postings_fact LEFT JOIN company_dim on job_postings_fact.company_id=company_dim.company_id
 WHERE
 job_title_short ='Data Analyst' AND job_location='Anywhere' AND salary_year_avg IS NOT NULL
 order by salary_year_avg DESC
 limit 10
)
select top_paying_jobs.* , skills from top_paying_jobs INNER JOIN skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id 
INNER JOIN skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
order by salary_year_avg;


