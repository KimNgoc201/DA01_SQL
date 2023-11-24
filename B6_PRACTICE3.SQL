--BT1: 
select name
from students
where marks>75
order by right(name,3), ID
--BT2:
select user_id,
concat(upper(left (name,1)),lower (right(name,length(name)-1))) as name
from users
--BT3:
SELECT 
manufacturer,
'$' || round(sum(total_sales)/1000000,0)||' million'
FROM pharmacy_sales
GROUP BY manufacturer
order by sum(total_sales) desc, manufacturer 
--BT4:
SELECT 
EXTRACT(month from submit_date) as mth,
product_id as product,
round(avg(stars),2)
FROM reviews
GROUP BY EXTRACT(month from submit_date), product_id
ORDER BY EXTRACT(month from submit_date), product_id
--BT5:
SELECT 
sender_id,
count(message_id) as message_count
FROM messages
where EXTRACT(month FROM sent_date)=8 and EXTRACT(year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY count(message_id) desc 
limit 2
--BT6:
select tweet_id
from tweets
where length(content)>15
--BT7:
***
--BT8:
select 
COUNT(ID) AS EMPS_HIRED
from employees
WHERE  EXTRACT (MONTH FROM JOINING_DATE) BETWEEN 1 AND 7
AND EXTRACT (YEAR FROM JOINING_DATE)=2022
--BT9:
select 
POSITION ('a' in first_name)
from worker
where first_name='Amitah'
--BT10:
select 
substring(TITLE, LENGTH (WINERY)+2,4) AS YEAR
from winemag_p2
WHERE COUNTRY = 'Macedonia'
