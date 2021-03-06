SELECT 
		-- [GLOBALEVENTID]
--       ,[SQLDATE]
--       ,[MonthYear]
--       ,[Year]
--       ,[FractionDate]
--       ,[Actor1Code]
--       ,[Actor1Name]
--       ,[Actor1CountryCode]
--       ,[Actor1KnownGroupCode]
--       ,[Actor1EthnicCode]
--       ,[Actor1Religion1Code]
--       ,[Actor1Religion2Code]
--       ,[Actor1Type1Code]
--       ,[Actor1Type2Code]
--       ,[Actor1Type3Code]
--       ,[Actor2Code]
--       ,[Actor2Name]
--       ,[Actor2CountryCode]
--       ,[Actor2KnownGroupCode]
--       ,[Actor2EthnicCode]
--       ,[Actor2Religion1Code]
--       ,[Actor2Religion2Code]
--       ,[Actor2Type1Code]
--       ,[Actor2Type2Code]
--       ,[Actor2Type3Code]
--       ,[IsRootEvent]
--       ,[EventCode]
--       ,[EventBaseCode]
--       ,[EventRootCode]
--       ,[QuadClass]
--       ,[GoldsteinScale]
--       ,[NumMentions]
--       ,[NumSources]
--       ,[NumArticles]
--       ,[AvgTone]
--       ,[Actor1Geo_Type]
--       ,[Actor1Geo_FullName]
--       ,[Actor1Geo_CountryCode]
--       ,[Actor1Geo_ADM1Code]
--       ,[Actor1Geo_Lat]
--       ,[Actor1Geo_Long]
--       ,[Actor1Geo_FeatureID]
--       ,[Actor2Geo_Type]
--       ,[Actor2Geo_FullName]
--       ,[Actor2Geo_CountryCode]
--       ,[Actor2Geo_ADM1Code]
--       ,[Actor2Geo_Lat]
--       ,[Actor2Geo_Long]
--       ,[Actor2Geo_FeatureID]
--       ,[ActionGeo_Type]
--       ,[ActionGeo_FullName]
--       ,[ActionGeo_CountryCode]
--       ,[ActionGeo_ADM1Code]
--       ,[ActionGeo_Lat]
--       ,[ActionGeo_Long]
--       ,[ActionGeo_FeatureID]
--       ,[DATEADDED]
      DISTINCT [SOURCEURL]
  FROM [GDELT].[dbo].[GDELT_EVENT_ORLANDO]
WHERE [Actor1Name] LIKE '%OBAMA%'
OR [Actor2Name] LIKE '%OBAMA%'
OR [Actor1Name] LIKE '%UNITED STATES%'
OR [Actor2Name] LIKE '%UNITED STATES%'
OR [Actor1Name] LIKE '%WASHINGTON%'
OR [Actor2Name] LIKE '%WASHINGTON%'
OR [Actor1Name] LIKE '%ORLANDO%'
OR [Actor2Name] LIKE '%ORLANDO%'
OR [Actor1Name] LIKE '%ISLAMIC%'
OR [Actor2Name] LIKE '%ISLAMIC%'
OR [Actor1Name] LIKE '%ISLAM%'
OR [Actor2Name] LIKE '%ISLAM%'
OR upper(Actor1Geo_FullName) LIKE '%ORLANDO%'
OR upper(Actor2Geo_FullName) LIKE '%ORLANDO%'
OR upper(Actor1Geo_FullName) LIKE '%WASHINGTON%'
OR upper(Actor2Geo_FullName) LIKE '%WASHINGTON%'
OR upper(ActionGeo_FullName) LIKE '%ORLANDO%'
OR upper(ActionGeo_FullName) LIKE '%WASHINGTON%'