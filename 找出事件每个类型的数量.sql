SELECT 
  [MonthYear], 
  [EventRootCode], 
  count([EventRootCode]) as NUM 
FROM 

(
	  SELECT 
      [GLOBALEVENTID], 
      [SQLDATE], 
      [MonthYear], 
      [Year], 
      [FractionDate], 
      [IsRootEvent], 
      [EventCode], 
      [EventBaseCode], 
      [EventRootCode], 
      [Actor1Code], 
      [Actor1Name], 
      [Actor1CountryCode], 
      [Actor1KnownGroupCode], 
      [Actor1EthnicCode], 
      [Actor1Religion1Code], 
      [Actor1Religion2Code], 
      [Actor1Type1Code], 
      [Actor1Type2Code], 
      [Actor1Type3Code], 
      [Actor2Code], 
      [Actor2Name], 
      [Actor2CountryCode], 
      [Actor2KnownGroupCode], 
      [Actor2EthnicCode], 
      [Actor2Religion1Code], 
      [Actor2Religion2Code], 
      [Actor2Type1Code], 
      [Actor2Type2Code], 
      [Actor2Type3Code] 
      /**,[IsRootEvent]
            ,[EventCode]
            ,[EventBaseCode]
            ,[EventRootCode]*/
      , 
      [QuadClass], 
      [GoldsteinScale], 
      [NumMentions], 
      [NumSources], 
      [NumArticles], 
      [AvgTone], 
      [Actor1Geo_Type], 
      [Actor1Geo_FullName], 
      [Actor1Geo_CountryCode], 
      [Actor1Geo_ADM1Code], 
      [Actor1Geo_Lat], 
      [Actor1Geo_Long], 
      [Actor1Geo_FeatureID], 
      [Actor2Geo_Type], 
      [Actor2Geo_FullName], 
      [Actor2Geo_CountryCode], 
      [Actor2Geo_ADM1Code], 
      [Actor2Geo_Lat], 
      [Actor2Geo_Long], 
      [Actor2Geo_FeatureID], 
      [ActionGeo_Type], 
      [ActionGeo_FullName], 
      [ActionGeo_CountryCode], 
      [ActionGeo_ADM1Code], 
      [ActionGeo_Lat], 
      [ActionGeo_Long], 
      [ActionGeo_FeatureID], 
      [DATEADDED], 
      [SOURCEURL] 
    FROM 
      [GDELT].[dbo].[GDELT_EVENT] 
    where 
      [MonthYear] in (
        '201304' 
        ,'201311','201312','201401','201403'
        ) 
      and (
        upper([Actor1Code]) like '%UIG%' 
        or upper([Actor1Name]) like '%UIG%' 
        or lower([Actor1Name]) like '%xinjiang%' 
        /**or upper([Actor1Name]) like '%WORLD UYGHUR CONGRESS%' 
              or upper([Actor1Name]) like 'WORLD UIGHUR CONGRESS' 
              or upper([Actor1Name]) like 'DILXAT RAXIT'
              or upper([Actor1Name]) like 'URUMQI'
                
              or upper([Actor1CountryCode])like '%UIG%'*/
        or upper([Actor1KnownGroupCode]) like '%UIG%' 
        or upper([Actor1EthnicCode]) like '%UIG%' 
        or upper([Actor1Religion1Code]) like '%UIG%' 
        or upper([Actor1Religion2Code]) like '%UIG%' 
        /**or [Actor1Code]like '%uig%'
              or [Actor1Name]like '%uig%'
              or [Actor1CountryCode]like '%uig%'
              or [Actor1KnownGroupCode]like '%uig%'
              or [Actor1EthnicCode]like '%uig%'
              or [Actor1Religion1Code]like '%uig%'
              or [Actor1Religion2Code]like '%uig%'*/
        or upper([Actor2Code]) like '%UIG%' 
        or upper([Actor2Name]) like '%UIG%' 
        or lower([Actor2Name]) like '%xinjiang%' 
        or upper([Actor2CountryCode]) like '%UIG%' 
        or upper([Actor2KnownGroupCode]) like '%UIG%' 
        or upper([Actor2EthnicCode]) like '%UIG%' 
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
) t
Group by   [MonthYear],   [EventRootCode] having count([EventRootCode])  >2
order by [MonthYear] ,[EventRootCode] 
