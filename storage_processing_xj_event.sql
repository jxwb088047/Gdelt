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
CREATE PROCEDURE Procedure_XJ_EVENT
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	declare @index_url int
	declare @http_real_len int

	set @index_url ,@http_real_len = (
	SELECT 
		CHARINDEX('http',[SOURCEURL]) ,len([SOURCEURL]) /**as length_url ,(length_url-index_http  ) into @http_real_len */
/**,[SOURCEURL],SUBSTRING([SOURCEURL],index_http,length_url-index_http+1)*/
  FROM [GDELT].[dbo].[GDELT_EVENT]

where  
	/**[MonthYear] in ('201304','201311','201312','201401','201403') and*/
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
)
	print @index_url
	print @http_real_len
END
GO
