SELECT 
		[MonthYear] 	  
      ,[EventRootCode]
      ,count([EventRootCode]) as EventNum

  FROM [GDELT].[dbo].[GDELT_EVENT] 
where  
	[MonthYear] in ('201304','201311','201312','201401','201403') and
(
	  upper([Actor1Code])  like '%UIG%' 
      or upper([Actor1Name]) like '%UIG%' 
		or lower([Actor1Name]) like '%xinjiang%' 
		/**or upper([Actor1Name]) like '%WORLD UYGHUR CONGRESS%' 
		or upper([Actor1Name]) like 'WORLD UIGHUR CONGRESS' 
		or upper([Actor1Name]) like 'DILXAT RAXIT'
		or upper([Actor1Name]) like 'URUMQI'
      
	  or upper([Actor1CountryCode])like '%UIG%'*/
      or upper([Actor1KnownGroupCode])like '%UIG%'
      or upper([Actor1EthnicCode])like '%UIG%'
      or upper([Actor1Religion1Code])like '%UIG%'
      or upper([Actor1Religion2Code])like '%UIG%'

	  /**or [Actor1Code]like '%uig%'
      or [Actor1Name]like '%uig%'
      or [Actor1CountryCode]like '%uig%'
      or [Actor1KnownGroupCode]like '%uig%'
      or [Actor1EthnicCode]like '%uig%'
      or [Actor1Religion1Code]like '%uig%'
      or [Actor1Religion2Code]like '%uig%'*/

	  or upper([Actor2Code]) like '%UIG%'  
      or upper([Actor2Name])like '%UIG%' 
		or lower([Actor2Name]) like '%xinjiang%'

      or upper([Actor2CountryCode])like '%UIG%'
      or upper([Actor2KnownGroupCode])like '%UIG%'
      or upper([Actor2EthnicCode])like '%UIG%'
      or upper([Actor2Religion1Code]) like '%UIG%'
      or upper([Actor2Religion2Code]) like '%UIG%'
	  /**or [Actor2Code]like '%uig%'
      or [Actor2Name]like '%uig%'
      or [Actor2CountryCode]like '%uig%'
      or [Actor2KnownGroupCode]like '%uig%'
      or [Actor2EthnicCode]like '%uig%'
      or [Actor2Religion1Code]like '%uig%'
      or [Actor2Religion2Code]like '%uig%'*/

)



group by [MonthYear],[EventRootCode]
order by [MonthYear],EventNum desc


