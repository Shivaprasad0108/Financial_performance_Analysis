Select * from Fin_DB;
--Total Revenue
select sum(Revenue) as Total_Revenue from Fin_DB;

--Total Cost
select Sum(Cost) as Total_Cost from Fin_DB;

--Total Profit
select Sum(Profit) as Total_Profit from Fin_DB;

  --Average Profit_ Margin
Select AVG(Profit_Margin) as AVG_Profit_MArgin from Fin_DB;

-- Revenue, Cost By Month:

SELECT  
  FORMAT(Date, 'yyyy-MM') AS Month,   -- Groups by Year-Month
    SUM(Revenue) AS Total_Revenue,
    SUM(Cost) AS Total_Cost
FROM Fin_DB
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;

--Total Profit by Region

Select Region, 
Sum(Profit) As Total_Profit 
from Fin_DB
Group By Region
order By Total_Profit Desc;

-- Revenue By Engagement type:

select Engagement_Type,
Sum(Revenue) As Total_Revenue 
from Fin_DB
Group By Engagement_Type
Order By Total_Revenue Desc;

--Revenue By Region: 

select Region,
Sum(Revenue) As Total_Revenue 
from Fin_DB
Group By Region
Order By Total_Revenue Desc;

--Profit by Engagement_Type : 

select Engagement_Type,
Sum(Profit) As Total_Profit
from Fin_DB
Group By Engagement_Type
Order By Total_Profit Desc;

