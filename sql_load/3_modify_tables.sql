-- select count(job_id),
--     case
--         WHEN job_location = 'Anywhere' THEN 'Remote'
--         WHEN job_location = 'New York, NY' THEN 'LOCAL'
--         ELSE 'ONSITE'
--     end as location_category
-- from job_postings_fact
-- where job_title_short='Data Analyst'
-- group by location_category;


