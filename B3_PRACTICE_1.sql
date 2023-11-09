--BT1
select name from city
where population >= 120000
and CountryCode = 'USA'
--BT2
SELECT * FROM CITY
WHERE COUNTRYCODE ='JPN'
--BT3
SELECT CITY, STATE FROM STATION
--BT4
SELECT DISTINCT CITY FROM STATION
WHERE CITY like 'a%'
or CITY like 'e%'
or CITY like 'i%'
or CITY like 'o%'
or CITY like 'u%'
--BT5
SELECT DISTINCT CITY FROM STATION
WHERE CITY like '%a'
or CITY like '%e'
or CITY like '%i'
or CITY like '%o'
or CITY like '%u'
--BT6
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT like 'a%'
AND CITY NOT like 'e%'
AND CITY NOT like 'i%'
AND CITY NOT like 'o%'
AND CITY NOT like 'u%'
--BT7
SELECT NAME FROM EMPLOYEE
ORDER BY NAME
--BT8
SELECT NAME FROM EMPLOYEE
WHERE SALARY >2000
AND MONTHS <10
ORDER BY employee_id 
--BT9
SELECT PRODUCT_ID FROM PRODUCT
WHERE low_fats ='Y'
AND recyclable= 'Y'
--BT10---VÌ SAO HÔNG DÙNG WHERE NOT referee_id '2'ĐƯỢC
SELECT name FROM CUSTOMER
WHERE  referee_id IS NULL
OR  referee_id =1
--BT11
SELECT  name, population, area FROM WORLD
WHERE area >=3000000
OR population>= 25000000
--BT12
SELECT DISTINCT author_id AS ID FROM VIEWS
WHERE author_id = viewer_id
ORDER BY ID ASC
--BT13
SELECT PART, ASSEMBLY_STEP FROM parts_assembly
WHERE finish_date IS NULL
--BT14
select * from lyft_drivers
WHERE yearly_salary NOT BETWEEN 30000 AND 70000
--BT 15
select * from uber_advertising
WHERE advertising_channel ='Uber'
and money_spent>100000
and year=2019
