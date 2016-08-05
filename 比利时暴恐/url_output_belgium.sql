-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
declare exec_cursor cursor
	
for 
	
	select distinct([SOURCEURL])
	FROM [GDELT].[dbo].[GDELT_EVENT_Belgium]--[GDELT].[dbo].[GDELT_EVENT]
	where 

	(
		upper(ACTOR1NAME) LIKE '%BELGIUM%'
		 OR UPPER(ACTOR2NAME) LIKE '%BELGIUM%'
		 OR upper(ACTOR1NAME) LIKE '%BRUSSELS%'
		 OR UPPER(ACTOR2NAME) LIKE '%BRUSSELS%'
		 OR [Actor1Geo_FullName] LIKE '%Brussels%'
		OR [Actor2Geo_FullName] LIKE '%Brussels%'
		OR [Actor1Geo_FullName] LIKE '%Belgium%'
		OR [Actor2Geo_FullName] LIKE '%Belgium%'
	)
	order by  [SOURCEURL] desc
	;

open exec_cursor ;

declare @source varchar(2000);
declare @count int;

set @count = 0;

declare @index int;
set @index = -1;

declare @length int;
set @length=0;

fetch next from exec_cursor into @source;

while @@fetch_status =0
	begin
		
		set @count=@count+1;
		--print 'count '+str(@count)+':'+@source;

		set @length=len(@source);
		--print 'length: '+str(@length);		

		set @index=charindex('http',@source);
		--print 'index: '+str(@index);

		
		if @index <> 0
			print substring(@source,@index,@length-@index+1)


		fetch next from exec_cursor into @source;
	end

close exec_cursor;
deallocate exec_cursor;
go
