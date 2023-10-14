-- Cleansed DimCusomtomer Table
SELECT 
  c.CustomerKey, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  c.FirstName AS [First Name], 
  --[MiddleName], 
  c.LastName [Last Name], 
  c.FirstName + ' ' + c.LastName AS [Full Name],
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  c.DateFirstPurchase, 
  --[CommuteDistance],
  g.City AS [Customer City] -- Joined customer city from DimGeography Table
FROM 
  dbo.DimCustomer c 
  LEFT JOIN dbo.DimGeography g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey in ascending order
