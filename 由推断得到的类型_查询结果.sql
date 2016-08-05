SELECT [GLOBALEVENTID]
      ,[SQLDATE]
      ,[MonthYear]
      ,[Year]
      ,[FractionDate]
      ,[Actor1Code]
      ,[Actor1Name]
      ,[Actor1CountryCode]
      ,[Actor1KnownGroupCode]
      ,[Actor1EthnicCode]
      ,[Actor1Religion1Code]
      ,[Actor1Religion2Code]
      ,[Actor1Type1Code]
      ,[Actor1Type2Code]
      ,[Actor1Type3Code]
      ,[Actor2Code]
      ,[Actor2Name]
      ,[Actor2CountryCode]
      ,[Actor2KnownGroupCode]
      ,[Actor2EthnicCode]
      ,[Actor2Religion1Code]
      ,[Actor2Religion2Code]
      ,[Actor2Type1Code]
      ,[Actor2Type2Code]
      ,[Actor2Type3Code]
      ,[IsRootEvent]
      ,[EventCode]
      ,[EventBaseCode]
      ,[EventRootCode]
      ,[QuadClass]
      ,[GoldsteinScale]
      ,[NumMentions]
      ,[NumSources]
      ,[NumArticles]
      ,[AvgTone]
      ,[Actor1Geo_Type]
      ,[Actor1Geo_FullName]
      ,[Actor1Geo_CountryCode]
      ,[Actor1Geo_ADM1Code]
      ,[Actor1Geo_Lat]
      ,[Actor1Geo_Long]
      ,[Actor1Geo_FeatureID]
      ,[Actor2Geo_Type]
      ,[Actor2Geo_FullName]
      ,[Actor2Geo_CountryCode]
      ,[Actor2Geo_ADM1Code]
      ,[Actor2Geo_Lat]
      ,[Actor2Geo_Long]
      ,[Actor2Geo_FeatureID]
      ,[ActionGeo_Type]
      ,[ActionGeo_FullName]
      ,[ActionGeo_CountryCode]
      ,[ActionGeo_ADM1Code]
      ,[ActionGeo_Lat]
      ,[ActionGeo_Long]
      ,[ActionGeo_FeatureID]
      ,[DATEADDED]
      ,[SOURCEURL]
  FROM [GDELT].[dbo].[GDELT_EVENT]
where eventrootcode in (1,2,4,11,17,19)
and (
/**lower([Actor1Name]) like '%xinjiang%' 
or lower([Actor2Name]) like '%xinjiang%' 
*/
[Actor1Code] like '%CHN%'
or [Actor2Code] like '%CHN%'
or [Actor1CountryCode] like '%CHN%'
or [Actor2CountryCode] like '%CHN%'
)