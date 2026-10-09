--1 List the top 5 products by total sales amount from factInternetSales table

Select * from FactInternetSales

Select top 5 ProductKey, sum(SalesAmount) as TotalSales from FactInternetSales
Group by productkey 
order by totalSales desc

--2 Calculate the total sales amount for each product category from the DimProductCategory table


Select dpc.EnglishProductCategoryName, sum(SalesAmount) as TotalSales from FactInternetSales fs
inner join DimProduct dp on dp.ProductKey = fs.ProductKey
inner join DimProductSubcategory dps on dps.ProductSubcategoryKey = dp.ProductSubcategoryKey
inner join DimProductCategory dpc on dpc.ProductCategoryKey = dps.ProductCategoryKey
Group by dpc.EnglishProductCategoryName

