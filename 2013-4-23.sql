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
where [GLOBALEVENTID] in
(
	254229448	,

254234218	,
254234219	,


254234381	,
254234382	,
254234383	,
254234384	,
254234385	,
254234386	,
254234387	,
254234388	,
254234389	,
254234390	,
254234391	,
254234392	,
254234393	,


254234480	,
254234481	,

254235573	,

254235806	,


254241484	,

254246257	,


254249815	,
254249816	,
254249817	,
254249818	,
254249819	,
254249820	,
254249821	,

254254172	,
254254173	,

254254200	,

254259723	,


254259815	,
254259816	,
254259817	,
254259818	,
254259819	,
254259820	,
254259821	,
254259822	,
254259823	,
254259824	,
254259825	,
254259826	,
254259827	,
254259828	,
254259829	,
254259830	,
254259831
) and [Actor1Geo_ADM1Code] = 'CH13' or [ActionGeo_ADM1Code] = 'CH13' or [Actor1Geo_ADM1Code] = 'CH13'