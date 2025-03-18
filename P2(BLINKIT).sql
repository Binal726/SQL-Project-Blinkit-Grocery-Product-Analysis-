create database blinkit;

show databases;

use blinkit;


#Questions:

 
#1.           Import Data from table Grocery Sales using the provided CSV File.

select * from blinkit;

#2.           Write an SQL query to show all Item_Identifier

select item_identifier from blinkit;

#3.           Write an SQL query to show count of total Item_Identifier.

select count(item_identifier) from blinkit;

#4.           Write an SQL query to show maximum Item Weight.

select max(item_weight) from blinkit;

#5.           Write an SQL query to show minimum Item Weight.

select min(item_weight) from blinkit;

#6.           Write an SQL query to show average Item_Weight.

select avg(item_weight) from blinkit;

#7.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat

select count(item_fat_content) from blinkit where item_fat_content ='Low Fat' ; 

#8.           Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.

select count(item_fat_content) from blinkit where item_fat_content='Regular'; 

#9.           Write an SQL query to show maximum Item_MRP

select max(Item_MRP) from blinkit;

#10.      Write an SQL query to show minimum Item_MRP

select min(Item_MRP) from blinkit;

#11.      Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select item_identifier , item_fat_content, item_type, item_mrp from blinkit where item_mrp >200;

#12.      Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat

select max(item_mrp) from blinkit where item_fat_content ='Low Fat';

#13.      Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat

select min(item_mrp) from blinkit where item_fat_content ='Low Fat';

#14.      Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100

select * from blinkit where item_mrp between 50 and 100;

#15.      Write an SQL query to show ALL UNIQUE value of Item_Fat_Content

select distinct(item_fat_content) from blinkit;

#16.      Write an SQL query to show ALL UNIQUE value of  Item_Type

select distinct(item_type) from blinkit;

#17.      Write an SQL query to show ALL DATA in descending ORDER by Item MRP

select * from blinkit order by item_type desc;

#18.      Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
select * from blinkit order by item_outlet_sales asc;

#19.      Write an SQL query to show ALL DATA in ascending by Item_Type
select * from blinkit order by item_type asc;

#20.      Write an SQL query to show DATA of item_type dairy & Meat
select * from blinkit where item_type in("Dairy","Meat");


#21.      Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct(outlet_size) from blinkit;

#22.      Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(outlet_location_type) from blinkit;

#23.      Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct(outlet_type) from blinkit;

#24.      Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select item_type ,count(item_type) from blinkit
group by item_type 
order by count(item_type)desc;


#25.      Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select outlet_size,count(outlet_size) from blinkit
group by outlet_size
order by count(outlet_size) asc;

#26.      Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select outlet_size,count(outlet_size) from blinkit
group by outlet_size
order by count(outlet_size) desc;

#27.      Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select outlet_location_type,count(outlet_location_type) from blinkit
group by outlet_location_type
order by count(outlet_location_type) desc;

#28.      Write an SQL query to show maximum MRP by Item_Type
select  max(item_type) from blinkit;

#29.      Write an SQL query to show minimum MRP by Item_Type
select  min(item_type) from blinkit;

#30.      Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year,min(item_mrp) from blinkit
group by outlet_establishment_year
order by min(item_mrp) desc;

#31.      Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year,max(item_mrp) from blinkit
group by outlet_establishment_year
order by max(item_mrp) desc;

#32.      Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_establishment_year,avg(item_mrp) from blinkit
group by outlet_establishment_year
order by avg(item_mrp) desc;
 

#33.      Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_establishment_year,avg(item_mrp) from blinkit
group by outlet_establishment_year
order by avg(item_mrp) asc;

#34.      Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type,max(item_mrp) from blinkit
group by outlet_type 
order by max(item_mrp) desc;

#35.      Write an SQL query to show maximum Item_Weight by Item_Type
select item_type , max(item_weight) from blinkit
group by item_type
order by max(item_weight) desc;

#36.      Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select outlet_establishment_year , max(item_weight) from blinkit
group by outlet_establishment_year 
order by max(item_weight) asc;

#37.      Write an SQL query to show minimum Item_Weight by Outlet_Type
select outlet_type , min(item_weight) from blinkit
group by outlet_type 
order by min(item_weight) asc;

#38.      Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select Outlet_Location_Type , avg(Item_Weight) from blinkit  
group by Outlet_Location_Type  
order by avg(item_weight) desc;

#39.      Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type , max(item_outlet_sales) from blinkit  
group by item_type  
order by max(item_outlet_sales) desc;

#40.      Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select item_type , min(item_outlet_sales) from blinkit  
group by item_type  
order by min(item_outlet_sales) desc;


#41.      Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select outlet_establishment_year , min(item_outlet_sales) from blinkit  
group by outlet_establishment_year  
order by min(item_outlet_sales) desc;

#42.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select outlet_establishment_year , max(item_outlet_sales) from blinkit  
group by outlet_establishment_year  
order by max(item_outlet_sales) desc;

#43.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
select Outlet_Size , avg(item_outlet_sales) from blinkit  
group by Outlet_Size  
order by avg(item_outlet_sales) desc;

#44.      Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
select Outlet_Type , avg(item_outlet_sales) from blinkit  
group by Outlet_Type  
order by avg(item_outlet_sales) desc;

#45.      Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select Outlet_Type , max(item_outlet_sales) from blinkit  
group by Outlet_Type  
order by max(item_outlet_sales) desc;


#46.      Write an SQL query to show total Item_Outlet_Sales by Item_Type
select Item_Type , sum(item_outlet_sales) from blinkit  
group by Item_Type  
order by sum(item_outlet_sales) desc;

#47.      Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select Item_Fat_Content , sum(item_outlet_sales) from blinkit  
group by Item_Fat_Content  
order by sum(item_outlet_sales) desc;


#48.      Write an SQL query to show maximum Item_Visibility by Item_Type
select item_type , max(item_visibility) from blinkit
group by item_type 
order by max(item_visibility);

#49.      Write an SQL query to show Minimum Item_Visibility by Item_Type
select item_type , min(item_visibility) from blinkit
group by item_type 
order by min(item_visibility);

#50.      Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select item_type , count(item_outlet_sales) from blinkit 
where Outlet_Location_Type in ('Tier 1')
group by item_type 
order by count(item_outlet_sales);

#51.      Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select item_type,count(Item_Outlet_Sales) from blinkit
where Item_Fat_Content in ('Low Fat', 'LF')
group by item_type
order by count(Item_Outlet_Sales);












