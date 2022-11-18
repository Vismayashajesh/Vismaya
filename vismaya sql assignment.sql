/*1create a table with four columns of your choice ,Making that they have null constraints*/

create database  office;
use office;
create table workers(name varchar(20),employee_id int,age int,salery_amount int); 

/*2)create a sales table having columns ID ,product name ,price per unit and quantity ,and tthen create a view which will show the total cost per each product and product name */

create table sales(column_id int,product_name varchar(30),priceper_unit int,quantity int);
insert sales values(1,'bag',1500,3),(2,'book',45,5),(3,'bottle',200,4);
select product_name,priceper_unit*quantity as Total_Cost from sales;

/* 3) for this challenge,use the same table again, your task for this challenge is to return a sum of all the ages in the table.your quaret should*/

create table students(id int,name varchar(30),age int);
insert students values(1,'rob',21),(2,'sam',19),(3,'jill',18),(4,'jim',21),(5,'sally',19),(6,'jess',20),(7,'will',21);
select sum(age) from students;

/*4) this is thee table structure that you,ll use for this SQL challenge, the challenge is to write query that'll group all the people by their age,along with a count of the people that are the same age.Here's*/

create table student(id int,name varchar(30),age int);
insert student values(1,'rob',21),(2,'sam',19),(3,'jill',18),(4,'jim',21),(5,'sally',19),(6,'jess',20),(7,'will',21);
select count(age),age from student group by age;

/* 5) in this challenge,your database table is given,your task is to writeba quary for this table that'll return just the division ids for all the divisions that had positive revenue in 2021.*/

create table profit(division_id int,year int,revenue int);
insert profit values(1,2018,60),(1,2021,40),(1,2020,70),(2,2021,-10),(3,2018,20),(3,2016,40),(4,2021,50);
select division_id from profit where revenue>0 and year=2021;