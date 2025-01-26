select count (*) from Accounts
select count (*) from Campaigns
select count (*) from Cases
select count (*) from Contacts
select count (*) from Industries
select count (*) from Oppurtunities
select count (*) from Owners
select count (*) from Products
select count (*) from Terriotries

select * from Cases where Case_Created_On = ('2021-05-25') and Status = ('Closed')

select * from Cases where Case_Created_On = ('2021-05-25') and Status = ('Open')

select sum (Resolution_Minutes) from Cases 

------ Page 2 -------
select Region, sum(Number_of_Employees) as Emp from Accounts group by Region

select sum(Budget)from Oppurtinities where Campaign_name = 'Monthly Newsletter'
select sum (Bedget) as Past3Months from Oppurtunities where Oppurtinitinity_ created_On >= '2021-02-25' and Oppurtinitinity_ created_On <= '2021-05-25'

------ Page 3 -------

select sum(Number_of_Employees)*1.2 from Accounts

select sum(Number_of_Employees) from Accounts

select SUM(Budget) from Oppournities where Product_Name = 'Design app' and Status = 'Won'

select SUM(Budget) from Oppournities where Product_Name = 'Tablets' and Status = 'Won'

select p.Product_category, AVG(o.Budget) as AvgPrice from Products p
JOIN
Oppournities o On P.ProductSeq = o.ProductSeq
group by p.Product_category
