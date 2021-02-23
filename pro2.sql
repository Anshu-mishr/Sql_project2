/*1. Write a query to get Product name and quantity/unit*/
use northwind;
select  productname,quantityperunit,unitprice
from products ;

/*2. Write a query to get current Product list (Product ID and name)*/

select productid, productname
from products 
where discontinued= "false"
order by productname ;

/*3. Write a query to get discontinued Product list (Product ID and name)*/

select productid, productname
from products 
where discontinued= 1
order by productname ;

/*4. Write a query to get most expense and least expensive Product list (name and unit price)*/

select  productname,unitprice
from products
order by unitprice desc ;

/* 5. Write a query to get Product list (id, name, unit price) where current products cost less than $20*/

select productid, productname, unitprice
from products 
where unitprice<20
order by unitprice desc ;

/*6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25*/

select productid, productname, unitprice
from products 
where unitprice between 15 and 25
order by unitprice desc ;

/*7. Write a query to get Product list (name, unit price) of above average price*/
select productname, unitprice
from products 
where unitprice > (select avg (unitprice) from products)
order by unitprice;

/* 8. Write a query to get Product list (name, unit price) of ten most expensive products*/
select * from
(
select distinct productname as ten_expensive_product,
unitprice
from products
order by unitprice desc
) as a 
limit 10;

/*9. Write a query to count current and discontinued products*/
select count(productname)
from products
group by discontinued;

/*10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity
on orde*/
select productname, unitsonorder,unitsinstock
from products 
where (unitsinstock < unitsonorder)
order by unitsinstock desc;
























