//ex1:
SELECT 
Sum(CASE
when device_type in ('tablet', 'phone') then 1
else 0
end) as mobile_views,
sum(case
when device_type ='laptop' then 1
else 0
end ) as laptop_views
FROM viewership
group by  mobile_views
//ex2:
select x,y,z,
case
when x+y>z and x+z>y and y+z>x then 'Yes'
else 'No'
end as triangle
from triangle
//ex3 --- em thấy code này đúng nma chạy thì không ra kết quả ạ
SELECT 
ROUND(100.0 * SUM(CASE 
WHEN call_category IS NULL OR call_category = 'n/a'THEN 1
ELSE 0
END)/COUNT(call_category), 1) AS uncategorised_call_pct
FROM callers
//ex4
select name
from customer 
where referee_id =1 or referee_id is null
//ex5
select survived, 
 sum(case
when pclass = 1 then 1
else 0
end) as first_class,
 sum(case
when pclass = 2 then 1 
else 0
end) as second_class,
 sum(case
when pclass = 3 then 1
else 0
end) as third_class
from titanic
group by survived
