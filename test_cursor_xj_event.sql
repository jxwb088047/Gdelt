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

--cursor

declare exec_cursor cursor
	
for 
	
	select distinct([SOURCEURL])	FROM [GDELT].[dbo].[GDELT_EVENT_UPDATE]--[GDELT].[dbo].[GDELT_EVENT]
	where 

(
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
	order by [SOURCEURL] desc
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
			print 'sub :'+substring(@source,@index,@length-@index+1)


		fetch next from exec_cursor into @source;
	end

close exec_cursor;
deallocate exec_cursor;
go

