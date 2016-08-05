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
IF EXISTS(SELECT * FROM sys.objects WHERE NAME='proc_xj_event_test') 	
	
	DROP PROCEDURE proc_xj_event_test;	
GO

CREATE PROC proc_xj_event_test
AS 
	SELECT * FROM [GDELT].[dbo].[GDELT_EVENT_UPDATE] WHERE GLOBALEVENTID ='295599296' ;
GO

EXEC proc_xj_event_test;

SELECT  database_name,recovery_model,NAME
FROM msdb.dbo.backupset 



	
