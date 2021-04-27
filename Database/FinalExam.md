<!-- PROJECT LOGO -->

<p align="center">
  <a href="https://github.com/Grindewald1900/Notebook">
    <img src="https://foreman.ubishops.ca/wp-content/uploads/2018/11/BU.gif" alt="Logo" width="360" height="140">
  </a>
</p>
<h1 align="center">CS 457/CS 557  – Database Software Design</h1>
<h1 align="center">Final exam </h1>


<h3>Full Name: Yi Ren </h3>
<h3>Number: 002269013 </h3>
<h3>Signature: Yi Ren </h3>


<h2>Problem 1: </h2>

<img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/6.png?raw=true" width="1000" height="800">
<img src="https://github.com/Grindewald1900/Notebook/blob/master/Image/Database/7.png?raw=true" width="600" height="350">

<h2>Problem 2: </h2>

```SQL
-- 1.List all publishers in alphabetical order of name.
select * from Publisher order by pubName;

-- 2.List all printing jobs for the publisher ‘Gold Press’.
select * from BookJob where pubID in (select pubID from Publisher where pubName LIKE "%Gold Press%");


-- 3.List the names and phone numbers of all publisher who have a rush job (jobType = ‘R’).
select pubName, telNo from Publisher where pubID in (select distinct pubID from BookJob where jobType = "R");


-- 4.List the dates of all the purchase orders for the publisher ‘Gold Press’.
-- 4.1
select poDate from PurchaseOrder where jobID in 
(select jobID from BookJob where pubID in (select pubID from Publisher where pubName LIKE "%Gold Press%"));
-- 4.2 
-- Since the dates of PurchaseOrder are identical when they belong to the same book job, we could simply select date from BookJob
select poDate from BookJob where pubID in (select pubID from Publisher where pubName LIKE "%Gold Press%");

-- 5.How many publisher fall into each credit code category?
select COUNT(creditCode) from Publisher group by creditCode;

-- 6.List all job type’s with at least three printing jobs.
select jobType from BookJob group by jobType
having COUNT(jobType) >= 3;

-- 7.List the average price of all items.
-- 7.1
select AVG(price) from Item;
-- 7.2
-- Take quantity into consideration, the result is made out of (Total Price ) / (Total quantity)
select SUM(quantity * select price from Item where itemID = POItem.itemID) / SUM(quantity) from POItem;


-- 8.List all items with a price below the average price of an item.
-- 8.1
select * from Item where price < (select AVG(price) from Item);
-- 8.2 Take quantity into consideration, the average price comes from 7.2
select * from Item where price < (select SUM(quantity * select price from Item where itemID = POItem.itemID) / SUM(quantity) from POItem;)

-- 9.Create a view of publisher details for all publisher who have a rush printing job, excluding their credit code.
create view PublisherDetail as (
  select Publisher.pubID, Publisher.pubName, Publisher.street, Publisher.city, Publisher.postcode, Publisher.telNo from Publisher, BookJob
   where BookJob.pubID = Publisher.pubID and BookJob.jobType = "R";);

```
