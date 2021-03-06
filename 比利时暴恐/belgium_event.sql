SELECT DISTINCT([SOURCEURL]),
      [DATEADDED]
      
  FROM [GDELT].[dbo].[GDELT_EVENT_Belgium]
where 
(upper(ACTOR1NAME) LIKE '%BELGIUM%'
 OR UPPER(ACTOR2NAME) LIKE '%BELGIUM%'
 OR upper(ACTOR1NAME) LIKE '%BRUSSELS%'
 OR UPPER(ACTOR2NAME) LIKE '%BRUSSELS%'
 OR [Actor1Geo_FullName] LIKE '%Brussels%'
OR [Actor2Geo_FullName] LIKE '%Brussels%'
OR [Actor1Geo_FullName] LIKE '%Belgium%'
OR [Actor2Geo_FullName] LIKE '%Belgium%')
 ORDER BY [DATEADDED]