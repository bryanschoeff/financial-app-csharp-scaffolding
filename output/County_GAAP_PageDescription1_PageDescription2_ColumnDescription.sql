USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescription]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescription](
	[PageDescription1_PageDescription2_ColumnDescriptionID] [int] IDENTITY(1,1) NOT NULL
	,[Category_Subcategory_TertiaryCategory_Field] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_PageDescription1_PageDescription2_ColumnDescription] PRIMARY KEY CLUSTERED 
(
	[PageDescription1_PageDescription2_ColumnDescriptionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionGetByID]
	-- Add the parameters for the stored procedure here
    @PageDescription1_PageDescription2_ColumnDescriptionID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [PageDescription1_PageDescription2_ColumnDescriptionID]
          ,[Category_Subcategory_TertiaryCategory_Field]
	  FROM [OnlineFinancialStatements].[dbo].[PageDescription1_PageDescription2_ColumnDescription]
	 WHERE [PageDescription1_PageDescription2_ColumnDescriptionID] = @PageDescription1_PageDescription2_ColumnDescriptionID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionDelete]
	-- Add the parameters for the stored procedure here
    @PageDescription1_PageDescription2_ColumnDescriptionID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[PageDescription1_PageDescription2_ColumnDescription]
		  WHERE [PageDescription1_PageDescription2_ColumnDescriptionID] = @PageDescription1_PageDescription2_ColumnDescriptionID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionAdd]
	-- Add the parameters for the stored procedure here
	
    @Category_Subcategory_TertiaryCategory_Field decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[PageDescription1_PageDescription2_ColumnDescription]
			   ([Category_Subcategory_TertiaryCategory_Field])
			   
		VALUES (@Category_Subcategory_TertiaryCategory_Field)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_PageDescription1_PageDescription2_ColumnDescriptionUpdate]
	-- Add the parameters for the stored procedure here
    @PageDescription1_PageDescription2_ColumnDescriptionID int,
    @Category_Subcategory_TertiaryCategory_Field decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[PageDescription1_PageDescription2_ColumnDescription]
	   SET [Category_Subcategory_TertiaryCategory_Field] = @Category_Subcategory_TertiaryCategory_Field 
		  
	 WHERE [PageDescription1_PageDescription2_ColumnDescriptionID] = @PageDescription1_PageDescription2_ColumnDescriptionID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
