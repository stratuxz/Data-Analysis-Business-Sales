-- Cleansed Dim_DateTable
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day, 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] AS WeekYear, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019
