create schema mobile_analysis;
use mobile_analysis;
select * from mobile;

-- ------------------------------------------ Questions ----------------------------------------------

-- 1 Mobile feature and prices
select phone_name , price from mobile;

-- 2. Find out the price of 5 most expensive phones.
select * from mobile 
order by price desc
limit 5;

-- 3. Find out the price of 5 cheapest phones.
select * from mobile 
order by price asc
limit 5;

-- 4. List of top 5 Samsung phones with price ad all features.
select * from mobile where brands = 'samsung'
order by price desc
limit 5;

-- 5. Must have android phone list then top 5 high price android phones.
select * from mobile where operating_system_type = 'android'
order by price desc
limit 5;

-- 6. Must have android phone list then top 5 lower price android phones.
select * from mobile where operating_system_type = 'android'
order by price asc
limit 5;

-- 7. Must have IOS phone list then top 5 high price IOS phones.
select * from mobile where operating_system_type = 'iOS'
order by price desc
limit 5;

-- 8. Must have IOS phone list then top 5 lower price.
select * from mobile where operating_system_type = 'iOS'
order by price asc
limit 5;

-- 9. Write a query which phone support 5g and also top 5 phone with 5g support.
select * from mobile where 5g_availability = 'yes'
order by price desc
limit 5;

-- 10. Total price of all mobile to be found with brand name.
select 
   brands,
   sum(price) 
from mobile 
group by brands;

-- -----------------------------------------------------------------------------------------------------



