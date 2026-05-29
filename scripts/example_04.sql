-- select * from employee;
-- select emp_name,birthday,sal from employee;
-- select emp_name as è]ã∆àıñº,birthday as ê∂îNåéì˙,sal as ããó^, cast(sal * 12 as int) as îNé˚ from employee;
-- select emp_name as è]ã∆àıñº,birthday as ê∂îNåéì˙,sal as ããó^, (sal * 12) :: int as îNé˚ from employee;
-- select emp_name as è]ã∆àıñº,sal as ããó^ from employee; 
-- select 'íSìñé“Å@' || emp_name || 'Å@ÇÃíaê∂ì˙ÇÕÅ@' || birthday || 'Å@Ç≈Ç∑' from employee;
-- select emp_name,to_char(birthday, 'Day, Month DD, YYYY') from employee;
-- select emp_name,to_char(sal, '9G999G999D99') from employee;
-- select emp_name,sal, comm, sal + COALESCE(comm,0) from employee;
-- select emp_name,to_char(sal,'9G999G999D99') from employee;

-- select emp_name,
--     case
--          when gender = 1 then 'íjê´'
--                          else 'èóê´'
    
--     end
-- from employee;

-- select emp_name,
--     case gender
--          when 1 then 'íjê´'
--                 else 'èóê´'
    
--     end
-- from employee;

-- select 
--     emp_name, 
--     birthday,
--     sal, 
--     comm, 
--     sal + 
--     case
--         when comm is null then 0 
--                           else comm 
--     end as åéé˚ 
-- from employee;

-- select * from employee order by hiredate;
-- select * from employee order by sal desc;
-- select * from employee order by gender, saldesc;
-- select 
--     emp_name, 
--     birthday, 
--     sal, 
--     comm, 
--     sal + 
--     case  
--        when comm is null then 0
--                     else comm  
--     end as åéé˚    
-- from employee 
-- order by 5 desc;

-- select *
-- from employee
-- order by sal desc
-- limit 3 offset 1;

-- é¿èK-1
-- \d product
-- select prod_id, prod_name, model_no, cost, discount from product;

-- é¿èK-2
-- select prod_name, cost, discount from product;

-- é¿èK-3
-- select prod_name, cost, discount, cost * discount as äÑà¯âøäi from product;

-- é¿èK-4
-- select
--     prod_name,
--     cost,
--     discount,
--     cost *
--     case 
--        when  discount is null then 1
--                               else discount
--     end as äÑà¯âøäi
-- from product;

-- é¿èK-5
-- select
--     prod_name,
--     cost,
--     discount,
--     to_char(cost *
--     case 
--        when  discount is null then 1
--                               else discount
--     end, '99G999D99') as äÑà¯âøäi
-- from product;

-- select 
--     emp_name,
--     sal from employee
-- where sal >= 2000; -- íäèoèåè
-- -- where sal >2000 or sal = 2000 Ç∆ìØÇ∂à”ñ°

-- select 
--     emp_name,
--     sal,
--     gender
-- from employee
-- where gender = 2; 

-- select
--     emp_name,
--     sal
-- from employee
-- where emp_name = 'à¿ïî çOç]';

-- select
--     emp_name,
--     sal,
--     birthday
-- from employee
-- where birthday >= '1980-01-01';

-- select
--     emp_name,
--     sal
-- from employee
-- where sal between 2000 and 3000
--     --   sal >= 2000 and sal <= 3000
--     --   sal between 2000 and 3000
-- ;

-- select 
--     emp_name,
--     sal,
--     emp_id
-- from employee
-- where emp_id = 2 or emp_id = 4 or emp_id = 7
-- ;

-- select
--     emp_name,
--     sal,
--     emp_id
-- from employee
-- where emp_id in (2, 4, 7);

-- select
--     emp_name,
--     sal
-- from employee
-- where sal >= 2000 or gender = 2
-- ;

-- select 
--     emp_name,
--     sal,
--     gender
-- from employee
-- where
--    (sal >= 2000 and sal <= 3000) or gender = 2
-- ;

-- select
--     emp_name,
--     sal
-- from employee
-- where (sal >= 2000 and sal <= 3000)
-- where sal between 2000 and 3000
-- ;

-- select
--     emp_name,
--     sal,
--     gender
-- from employee
-- where sal between 2000 and 3000 or gender = 2
-- ;

-- select * from customer
-- where address like '%ëÂç„és%';

-- select * from customer
-- where address not like 'ìåãûìs%';

-- select cust_id,cust_name from customer
-- where cust_name like '_ìc%';

-- select cust_id,cust_name from customer
-- where cust_name like '_ìc%' and cust_name like '%éq';

-- select cust_id,cust_name from customer
-- where cust_name like '_ìc%éq';

-- é¿èK-1
-- select * from product
-- where cost >= 2000;

-- é¿èK-2
-- select cust_id, cust_name, fax from customer
-- where fax is null;

-- é¿èK-6
-- select cust_id, cust_name, tel from customer
-- where tel not like '03%' and tel not like '06%';

-- select count(*) from employee;

-- select
--     count(*) - count(comm)
-- from employee;

-- select
--     dept_id,
--     count(*),
--     sum(sal),
--     avg(sal),
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- order by dept_id
-- ;

-- select
--     gender,
--     count(*)
-- from employee
-- group by gender
-- order by gender
-- ;

-- select
--     dept_id,
--     gender,
--     count(*),
--     avg(sal)
-- from employee
-- group by dept_id, gender
-- order by dept_id, gender
-- ;

-- \d employee

-- select
--     gender,
--     dept_id,
--     count(*),
--     avg(sal)
-- from employee
-- group by dept_id,gender
-- order by gender, dept_id
-- ;

select
    dept_id,
    sum(sal),
    avg(sal),
    min(sal),
    max(sal)
from employee
group by dept_id
    having sum(sal) <= 5000
order by dept_id
;