--Top paying skill on job salary
select skills,
    round(AVG(salary_year_avg) , 0) as avg_salary
from job_postings_fact
    INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
and salary_year_avg is not null
    -- AND job_work_from_home = TRUE
group by skills
order by avg_salary DESC
LIMIT 25;