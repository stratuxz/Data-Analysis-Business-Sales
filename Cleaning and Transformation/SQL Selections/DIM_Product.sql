SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS [Product Name], 
  pc.[EnglishProductCategoryName] AS [Product Category], -- Joined from DimProductCategory Table
  ps.[EnglishProductSubcategoryName] AS [Sub Category], -- Joined from DimProductSubcategory Table
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  ISNULL (p.[Status], 'Unavailable') AS [Product Status] -- If NULL, it's not available
FROM 
  dbo.DimProduct p 
  LEFT JOIN dbo.DimProductSubcategory ps On ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
