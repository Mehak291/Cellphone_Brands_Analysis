-- creating the database --
create database mobile_brand;
use mobile_brand;

select * from mobile

-- Q1: Retrieve all the phone names and their respective brands --
select phone_name, brands from mobile ;

-- Q2: check mobile features and mobie list --
select Phone_name, Price from mobile;


--Q3:  find out the price of of 5 most expensive phone --
select * from mobile order by price desc limit 5;


-- Q4: Find the phones with 5G availability --
select phone_name, brands from mobile 
where 5G_Availability = 'Yes';

-- Q5: find out the price of of 5 most cheapest  phone --
select * from mobile order by price asc limit 5;

-- Q6: list of top 5 samsung phone with price and all feaures -- 
select * from mobile
where Brands = 'Samsung'
order by price desc
limit 5;


-- Q7: must have android phone list then top 5 high price android phone --
select * from mobile
where operating_System_Type = 'Android'
order by price desc
limit 5;

-- Q8: Must have ios phone list then top 5 lower price ios phone --
select * from mobile
where operating_System_Type = 'Ios'
order by price asc



-- Q9: Write a query which phone support 5g and also top 5 phone with 5g support--
Select * from mobile where 5G_Availability = 'Yes'
order by price desc
limit 5;

-- Q10: Find the phone with the highest battery capacity --
SELECT Phone_name, Brands, Battery_Capacity
FROM mobile
where Battery_Capacity <> 'Not Specified'
ORDER BY Battery_Capacity DESC
LIMIT 1;

-- Q11: Get a count of phones for each operating system type --
SELECT Operating_System_Type, COUNT(*) AS Count
FROM mobile
GROUP BY Operating_System_Type;

-- Q12: Calculate the total mobiles in each price range --
SELECT Price_Range, COUNT(*) AS Count
FROM mobile 
GROUP BY Price_Range;


-- Q13: Find the top 10 phones with the highest selfie camera resolution --
SELECT Phone_name, Brands, Selfie_Camera
FROM mobile
where selfie_camera <> 'Not Specified'
ORDER BY Selfie_Camera DESC
LIMIT 10;

-- Q14: List phones with a specific USB type and internal storage --
SELECT Phone_name, Brands
FROM mobile
WHERE USB_Type = 'Type C' AND Internal_Storage >= 128;




