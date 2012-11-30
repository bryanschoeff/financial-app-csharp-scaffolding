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
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivities]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivities](
	[StatementOfNetPosition_GovernmentalActivitiesID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_Investments] decimal(19,4) NULL
	,[Assets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_AccruedInterestReceivable] decimal(19,4) NULL
	,[Assets_AccountsReceivable] decimal(19,4) NULL
	,[Assets_InternalBalances] decimal(19,4) NULL
	,[Assets_IntergovernmentalReceivable] decimal(19,4) NULL
	,[Assets_PrepaidItems] decimal(19,4) NULL
	,[Assets_PropertyTaxesReceivable] decimal(19,4) NULL
	,[Assets_SpecialAssessmentsReceivable] decimal(19,4) NULL
	,[Assets_SalesTaxReceivable] decimal(19,4) NULL
	,[Assets_RevenueInLieuOfTaxesReceivable] decimal(19,4) NULL
	,[Assets_DueFromOtherGovernments] decimal(19,4) NULL
	,[Assets_NotesReceivable] decimal(19,4) NULL
	,[Assets_LoansReceivable] decimal(19,4) NULL
	,[Assets_InvestmentInJointVenture] decimal(19,4) NULL
	,[Assets_RestrictedAssets] decimal(19,4) NULL
	,[Assets_AdvancesToOtherFunds] decimal(19,4) NULL
	,[Assets_NondepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_DepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_LessAccumulatedDepreciaion] decimal(19,4) NULL
	,[Assets_OtherAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_AccruedWagesAndBenefits] decimal(19,4) NULL
	,[Liabilities_ContractsPayable] decimal(19,4) NULL
	,[Liabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_DueToOtherGovernments] decimal(19,4) NULL
	,[Liabilities_MaturedCompensatedAbsences] decimal(19,4) NULL
	,[Liabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_AccruedInterestPayable] decimal(19,4) NULL
	,[Liabilities_RetainagePayable] decimal(19,4) NULL
	,[Liabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_NotesPayable] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_DueWithinOneYear] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_DueInMoreThanOneYear] decimal(19,4) NULL
	,[Liabilities_OtherLiabilities] decimal(19,4) NULL
	,[NetPosition_NetInvestmentInCapitalAssets] decimal(19,4) NULL
	,[NetPosition_Restricted] decimal(19,4) NULL
	,[NetPosition_UnrestrictedDeficit] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfNetPosition_GovernmentalActivities] PRIMARY KEY CLUSTERED 
(
	[StatementOfNetPosition_GovernmentalActivitiesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_GovernmentalActivitiesID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfNetPosition_GovernmentalActivitiesID]
          ,[Assets_CashAndCashEquivalents]
          ,[Assets_Investments]
          ,[Assets_InventoryHeldForResale]
          ,[Assets_MaterialsAndSuppliesInventory]
          ,[Assets_AccruedInterestReceivable]
          ,[Assets_AccountsReceivable]
          ,[Assets_InternalBalances]
          ,[Assets_IntergovernmentalReceivable]
          ,[Assets_PrepaidItems]
          ,[Assets_PropertyTaxesReceivable]
          ,[Assets_SpecialAssessmentsReceivable]
          ,[Assets_SalesTaxReceivable]
          ,[Assets_RevenueInLieuOfTaxesReceivable]
          ,[Assets_DueFromOtherGovernments]
          ,[Assets_NotesReceivable]
          ,[Assets_LoansReceivable]
          ,[Assets_InvestmentInJointVenture]
          ,[Assets_RestrictedAssets]
          ,[Assets_AdvancesToOtherFunds]
          ,[Assets_NondepreciableCapitalAssets]
          ,[Assets_DepreciableCapitalAssets]
          ,[Assets_LessAccumulatedDepreciaion]
          ,[Assets_OtherAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_AccountsPayable]
          ,[Liabilities_AccruedWagesAndBenefits]
          ,[Liabilities_ContractsPayable]
          ,[Liabilities_IntergovernmentalPayable]
          ,[Liabilities_DueToOtherGovernments]
          ,[Liabilities_MaturedCompensatedAbsences]
          ,[Liabilities_MaturedInterestPayable]
          ,[Liabilities_MaturedBondsPayable]
          ,[Liabilities_AccruedInterestPayable]
          ,[Liabilities_RetainagePayable]
          ,[Liabilities_ClaimsPayable]
          ,[Liabilities_UnearnedRevenue]
          ,[Liabilities_NotesPayable]
          ,[Liabilities_LongTermLiabilities_DueWithinOneYear]
          ,[Liabilities_LongTermLiabilities_DueInMoreThanOneYear]
          ,[Liabilities_OtherLiabilities]
          ,[NetPosition_NetInvestmentInCapitalAssets]
          ,[NetPosition_Restricted]
          ,[NetPosition_UnrestrictedDeficit]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_GovernmentalActivities]
	 WHERE [StatementOfNetPosition_GovernmentalActivitiesID] = @StatementOfNetPosition_GovernmentalActivitiesID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_GovernmentalActivitiesID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_GovernmentalActivities]
		  WHERE [StatementOfNetPosition_GovernmentalActivitiesID] = @StatementOfNetPosition_GovernmentalActivitiesID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InternalBalances decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SpecialAssessmentsReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_InvestmentInJointVenture decimal(19,4),
    @Assets_RestrictedAssets decimal(19,4),
    @Assets_AdvancesToOtherFunds decimal(19,4),
    @Assets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_DepreciableCapitalAssets decimal(19,4),
    @Assets_LessAccumulatedDepreciaion decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedCompensatedAbsences decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_AccruedInterestPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_DueWithinOneYear decimal(19,4),
    @Liabilities_LongTermLiabilities_DueInMoreThanOneYear decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_UnrestrictedDeficit decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_GovernmentalActivities]
			   ([Assets_CashAndCashEquivalents]
			   ,[Assets_Investments]
			   ,[Assets_InventoryHeldForResale]
			   ,[Assets_MaterialsAndSuppliesInventory]
			   ,[Assets_AccruedInterestReceivable]
			   ,[Assets_AccountsReceivable]
			   ,[Assets_InternalBalances]
			   ,[Assets_IntergovernmentalReceivable]
			   ,[Assets_PrepaidItems]
			   ,[Assets_PropertyTaxesReceivable]
			   ,[Assets_SpecialAssessmentsReceivable]
			   ,[Assets_SalesTaxReceivable]
			   ,[Assets_RevenueInLieuOfTaxesReceivable]
			   ,[Assets_DueFromOtherGovernments]
			   ,[Assets_NotesReceivable]
			   ,[Assets_LoansReceivable]
			   ,[Assets_InvestmentInJointVenture]
			   ,[Assets_RestrictedAssets]
			   ,[Assets_AdvancesToOtherFunds]
			   ,[Assets_NondepreciableCapitalAssets]
			   ,[Assets_DepreciableCapitalAssets]
			   ,[Assets_LessAccumulatedDepreciaion]
			   ,[Assets_OtherAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_AccountsPayable]
			   ,[Liabilities_AccruedWagesAndBenefits]
			   ,[Liabilities_ContractsPayable]
			   ,[Liabilities_IntergovernmentalPayable]
			   ,[Liabilities_DueToOtherGovernments]
			   ,[Liabilities_MaturedCompensatedAbsences]
			   ,[Liabilities_MaturedInterestPayable]
			   ,[Liabilities_MaturedBondsPayable]
			   ,[Liabilities_AccruedInterestPayable]
			   ,[Liabilities_RetainagePayable]
			   ,[Liabilities_ClaimsPayable]
			   ,[Liabilities_UnearnedRevenue]
			   ,[Liabilities_NotesPayable]
			   ,[Liabilities_LongTermLiabilities_DueWithinOneYear]
			   ,[Liabilities_LongTermLiabilities_DueInMoreThanOneYear]
			   ,[Liabilities_OtherLiabilities]
			   ,[NetPosition_NetInvestmentInCapitalAssets]
			   ,[NetPosition_Restricted]
			   ,[NetPosition_UnrestrictedDeficit])
			   
		VALUES (@Assets_CashAndCashEquivalents,
			   @Assets_Investments,
			   @Assets_InventoryHeldForResale,
			   @Assets_MaterialsAndSuppliesInventory,
			   @Assets_AccruedInterestReceivable,
			   @Assets_AccountsReceivable,
			   @Assets_InternalBalances,
			   @Assets_IntergovernmentalReceivable,
			   @Assets_PrepaidItems,
			   @Assets_PropertyTaxesReceivable,
			   @Assets_SpecialAssessmentsReceivable,
			   @Assets_SalesTaxReceivable,
			   @Assets_RevenueInLieuOfTaxesReceivable,
			   @Assets_DueFromOtherGovernments,
			   @Assets_NotesReceivable,
			   @Assets_LoansReceivable,
			   @Assets_InvestmentInJointVenture,
			   @Assets_RestrictedAssets,
			   @Assets_AdvancesToOtherFunds,
			   @Assets_NondepreciableCapitalAssets,
			   @Assets_DepreciableCapitalAssets,
			   @Assets_LessAccumulatedDepreciaion,
			   @Assets_OtherAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_AccountsPayable,
			   @Liabilities_AccruedWagesAndBenefits,
			   @Liabilities_ContractsPayable,
			   @Liabilities_IntergovernmentalPayable,
			   @Liabilities_DueToOtherGovernments,
			   @Liabilities_MaturedCompensatedAbsences,
			   @Liabilities_MaturedInterestPayable,
			   @Liabilities_MaturedBondsPayable,
			   @Liabilities_AccruedInterestPayable,
			   @Liabilities_RetainagePayable,
			   @Liabilities_ClaimsPayable,
			   @Liabilities_UnearnedRevenue,
			   @Liabilities_NotesPayable,
			   @Liabilities_LongTermLiabilities_DueWithinOneYear,
			   @Liabilities_LongTermLiabilities_DueInMoreThanOneYear,
			   @Liabilities_OtherLiabilities,
			   @NetPosition_NetInvestmentInCapitalAssets,
			   @NetPosition_Restricted,
			   @NetPosition_UnrestrictedDeficit)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_GovernmentalActivitiesUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_GovernmentalActivitiesID int,
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InternalBalances decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SpecialAssessmentsReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_InvestmentInJointVenture decimal(19,4),
    @Assets_RestrictedAssets decimal(19,4),
    @Assets_AdvancesToOtherFunds decimal(19,4),
    @Assets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_DepreciableCapitalAssets decimal(19,4),
    @Assets_LessAccumulatedDepreciaion decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedCompensatedAbsences decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_AccruedInterestPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_DueWithinOneYear decimal(19,4),
    @Liabilities_LongTermLiabilities_DueInMoreThanOneYear decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_UnrestrictedDeficit decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_GovernmentalActivities]
	   SET [Assets_CashAndCashEquivalents] = @Assets_CashAndCashEquivalents 
		  ,[Assets_Investments] = @Assets_Investments 
		  ,[Assets_InventoryHeldForResale] = @Assets_InventoryHeldForResale 
		  ,[Assets_MaterialsAndSuppliesInventory] = @Assets_MaterialsAndSuppliesInventory 
		  ,[Assets_AccruedInterestReceivable] = @Assets_AccruedInterestReceivable 
		  ,[Assets_AccountsReceivable] = @Assets_AccountsReceivable 
		  ,[Assets_InternalBalances] = @Assets_InternalBalances 
		  ,[Assets_IntergovernmentalReceivable] = @Assets_IntergovernmentalReceivable 
		  ,[Assets_PrepaidItems] = @Assets_PrepaidItems 
		  ,[Assets_PropertyTaxesReceivable] = @Assets_PropertyTaxesReceivable 
		  ,[Assets_SpecialAssessmentsReceivable] = @Assets_SpecialAssessmentsReceivable 
		  ,[Assets_SalesTaxReceivable] = @Assets_SalesTaxReceivable 
		  ,[Assets_RevenueInLieuOfTaxesReceivable] = @Assets_RevenueInLieuOfTaxesReceivable 
		  ,[Assets_DueFromOtherGovernments] = @Assets_DueFromOtherGovernments 
		  ,[Assets_NotesReceivable] = @Assets_NotesReceivable 
		  ,[Assets_LoansReceivable] = @Assets_LoansReceivable 
		  ,[Assets_InvestmentInJointVenture] = @Assets_InvestmentInJointVenture 
		  ,[Assets_RestrictedAssets] = @Assets_RestrictedAssets 
		  ,[Assets_AdvancesToOtherFunds] = @Assets_AdvancesToOtherFunds 
		  ,[Assets_NondepreciableCapitalAssets] = @Assets_NondepreciableCapitalAssets 
		  ,[Assets_DepreciableCapitalAssets] = @Assets_DepreciableCapitalAssets 
		  ,[Assets_LessAccumulatedDepreciaion] = @Assets_LessAccumulatedDepreciaion 
		  ,[Assets_OtherAssets] = @Assets_OtherAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_AccountsPayable] = @Liabilities_AccountsPayable 
		  ,[Liabilities_AccruedWagesAndBenefits] = @Liabilities_AccruedWagesAndBenefits 
		  ,[Liabilities_ContractsPayable] = @Liabilities_ContractsPayable 
		  ,[Liabilities_IntergovernmentalPayable] = @Liabilities_IntergovernmentalPayable 
		  ,[Liabilities_DueToOtherGovernments] = @Liabilities_DueToOtherGovernments 
		  ,[Liabilities_MaturedCompensatedAbsences] = @Liabilities_MaturedCompensatedAbsences 
		  ,[Liabilities_MaturedInterestPayable] = @Liabilities_MaturedInterestPayable 
		  ,[Liabilities_MaturedBondsPayable] = @Liabilities_MaturedBondsPayable 
		  ,[Liabilities_AccruedInterestPayable] = @Liabilities_AccruedInterestPayable 
		  ,[Liabilities_RetainagePayable] = @Liabilities_RetainagePayable 
		  ,[Liabilities_ClaimsPayable] = @Liabilities_ClaimsPayable 
		  ,[Liabilities_UnearnedRevenue] = @Liabilities_UnearnedRevenue 
		  ,[Liabilities_NotesPayable] = @Liabilities_NotesPayable 
		  ,[Liabilities_LongTermLiabilities_DueWithinOneYear] = @Liabilities_LongTermLiabilities_DueWithinOneYear 
		  ,[Liabilities_LongTermLiabilities_DueInMoreThanOneYear] = @Liabilities_LongTermLiabilities_DueInMoreThanOneYear 
		  ,[Liabilities_OtherLiabilities] = @Liabilities_OtherLiabilities 
		  ,[NetPosition_NetInvestmentInCapitalAssets] = @NetPosition_NetInvestmentInCapitalAssets 
		  ,[NetPosition_Restricted] = @NetPosition_Restricted 
		  ,[NetPosition_UnrestrictedDeficit] = @NetPosition_UnrestrictedDeficit 
		  
	 WHERE [StatementOfNetPosition_GovernmentalActivitiesID] = @StatementOfNetPosition_GovernmentalActivitiesID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivities]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivities](
	[StatementOfActivities_GovernmentalActivitiesID] [int] IDENTITY(1,1) NOT NULL
	,[ProgramRevenues_ChargesForServicesAndSales] decimal(19,4) NULL
	,[ProgramRevenues_OperatingGrantsContributionsAndInterest] decimal(19,4) NULL
	,[ProgramRevenues_CapitalGrantsAndContributions] decimal(19,4) NULL
	,[GeneralRevenues_PropertyTaxes] decimal(19,4) NULL
	,[GeneralRevenues_SalesTaxes] decimal(19,4) NULL
	,[GeneralRevenues_OtherTaxes] decimal(19,4) NULL
	,[GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms] decimal(19,4) NULL
	,[GeneralRevenues_GainOnSaleOfCapitalAsset] decimal(19,4) NULL
	,[GeneralRevenues_PaymentInLieuOfTaxes] decimal(19,4) NULL
	,[GeneralRevenues_UnrestrictedContributions] decimal(19,4) NULL
	,[GeneralRevenues_InvestmentEarnings] decimal(19,4) NULL
	,[GeneralRevenues_Miscellaneous] decimal(19,4) NULL
	,[GeneralRevenues_OtherRevenues] decimal(19,4) NULL
	,[SpecialItem] decimal(19,4) NULL
	,[ExtraordinaryItem] decimal(19,4) NULL
	,[ContributionToPermanentFund] decimal(19,4) NULL
	,[Transfers] decimal(19,4) NULL
	,[Expenses_GeneralGovernment_LegislativeAndExecutive] decimal(19,4) NULL
	,[Expenses_GeneralGovernment_Judicial] decimal(19,4) NULL
	,[Expenses_PublicSafety] decimal(19,4) NULL
	,[Expenses_PublicWorks] decimal(19,4) NULL
	,[Expenses_Health] decimal(19,4) NULL
	,[Expenses_HumanServices] decimal(19,4) NULL
	,[Expenses_ConservationAndRecreation] decimal(19,4) NULL
	,[Expenses_Intergovernmental] decimal(19,4) NULL
	,[Expenses_InterestAndFiscalCharges] decimal(19,4) NULL
	,[Expenses_DepreciationExpense] decimal(19,4) NULL
	,[Expenses_OtherExpenses] decimal(19,4) NULL
	,[NetPositionBeginningOfYear] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfActivities_GovernmentalActivities] PRIMARY KEY CLUSTERED 
(
	[StatementOfActivities_GovernmentalActivitiesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfActivities_GovernmentalActivitiesID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfActivities_GovernmentalActivitiesID]
          ,[ProgramRevenues_ChargesForServicesAndSales]
          ,[ProgramRevenues_OperatingGrantsContributionsAndInterest]
          ,[ProgramRevenues_CapitalGrantsAndContributions]
          ,[GeneralRevenues_PropertyTaxes]
          ,[GeneralRevenues_SalesTaxes]
          ,[GeneralRevenues_OtherTaxes]
          ,[GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms]
          ,[GeneralRevenues_GainOnSaleOfCapitalAsset]
          ,[GeneralRevenues_PaymentInLieuOfTaxes]
          ,[GeneralRevenues_UnrestrictedContributions]
          ,[GeneralRevenues_InvestmentEarnings]
          ,[GeneralRevenues_Miscellaneous]
          ,[GeneralRevenues_OtherRevenues]
          ,[SpecialItem]
          ,[ExtraordinaryItem]
          ,[ContributionToPermanentFund]
          ,[Transfers]
          ,[Expenses_GeneralGovernment_LegislativeAndExecutive]
          ,[Expenses_GeneralGovernment_Judicial]
          ,[Expenses_PublicSafety]
          ,[Expenses_PublicWorks]
          ,[Expenses_Health]
          ,[Expenses_HumanServices]
          ,[Expenses_ConservationAndRecreation]
          ,[Expenses_Intergovernmental]
          ,[Expenses_InterestAndFiscalCharges]
          ,[Expenses_DepreciationExpense]
          ,[Expenses_OtherExpenses]
          ,[NetPositionBeginningOfYear]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfActivities_GovernmentalActivities]
	 WHERE [StatementOfActivities_GovernmentalActivitiesID] = @StatementOfActivities_GovernmentalActivitiesID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfActivities_GovernmentalActivitiesID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfActivities_GovernmentalActivities]
		  WHERE [StatementOfActivities_GovernmentalActivitiesID] = @StatementOfActivities_GovernmentalActivitiesID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesAdd]
	-- Add the parameters for the stored procedure here
	
    @ProgramRevenues_ChargesForServicesAndSales decimal(19,4),
    @ProgramRevenues_OperatingGrantsContributionsAndInterest decimal(19,4),
    @ProgramRevenues_CapitalGrantsAndContributions decimal(19,4),
    @GeneralRevenues_PropertyTaxes decimal(19,4),
    @GeneralRevenues_SalesTaxes decimal(19,4),
    @GeneralRevenues_OtherTaxes decimal(19,4),
    @GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms decimal(19,4),
    @GeneralRevenues_GainOnSaleOfCapitalAsset decimal(19,4),
    @GeneralRevenues_PaymentInLieuOfTaxes decimal(19,4),
    @GeneralRevenues_UnrestrictedContributions decimal(19,4),
    @GeneralRevenues_InvestmentEarnings decimal(19,4),
    @GeneralRevenues_Miscellaneous decimal(19,4),
    @GeneralRevenues_OtherRevenues decimal(19,4),
    @SpecialItem decimal(19,4),
    @ExtraordinaryItem decimal(19,4),
    @ContributionToPermanentFund decimal(19,4),
    @Transfers decimal(19,4),
    @Expenses_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenses_GeneralGovernment_Judicial decimal(19,4),
    @Expenses_PublicSafety decimal(19,4),
    @Expenses_PublicWorks decimal(19,4),
    @Expenses_Health decimal(19,4),
    @Expenses_HumanServices decimal(19,4),
    @Expenses_ConservationAndRecreation decimal(19,4),
    @Expenses_Intergovernmental decimal(19,4),
    @Expenses_InterestAndFiscalCharges decimal(19,4),
    @Expenses_DepreciationExpense decimal(19,4),
    @Expenses_OtherExpenses decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfActivities_GovernmentalActivities]
			   ([ProgramRevenues_ChargesForServicesAndSales]
			   ,[ProgramRevenues_OperatingGrantsContributionsAndInterest]
			   ,[ProgramRevenues_CapitalGrantsAndContributions]
			   ,[GeneralRevenues_PropertyTaxes]
			   ,[GeneralRevenues_SalesTaxes]
			   ,[GeneralRevenues_OtherTaxes]
			   ,[GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms]
			   ,[GeneralRevenues_GainOnSaleOfCapitalAsset]
			   ,[GeneralRevenues_PaymentInLieuOfTaxes]
			   ,[GeneralRevenues_UnrestrictedContributions]
			   ,[GeneralRevenues_InvestmentEarnings]
			   ,[GeneralRevenues_Miscellaneous]
			   ,[GeneralRevenues_OtherRevenues]
			   ,[SpecialItem]
			   ,[ExtraordinaryItem]
			   ,[ContributionToPermanentFund]
			   ,[Transfers]
			   ,[Expenses_GeneralGovernment_LegislativeAndExecutive]
			   ,[Expenses_GeneralGovernment_Judicial]
			   ,[Expenses_PublicSafety]
			   ,[Expenses_PublicWorks]
			   ,[Expenses_Health]
			   ,[Expenses_HumanServices]
			   ,[Expenses_ConservationAndRecreation]
			   ,[Expenses_Intergovernmental]
			   ,[Expenses_InterestAndFiscalCharges]
			   ,[Expenses_DepreciationExpense]
			   ,[Expenses_OtherExpenses]
			   ,[NetPositionBeginningOfYear])
			   
		VALUES (@ProgramRevenues_ChargesForServicesAndSales,
			   @ProgramRevenues_OperatingGrantsContributionsAndInterest,
			   @ProgramRevenues_CapitalGrantsAndContributions,
			   @GeneralRevenues_PropertyTaxes,
			   @GeneralRevenues_SalesTaxes,
			   @GeneralRevenues_OtherTaxes,
			   @GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms,
			   @GeneralRevenues_GainOnSaleOfCapitalAsset,
			   @GeneralRevenues_PaymentInLieuOfTaxes,
			   @GeneralRevenues_UnrestrictedContributions,
			   @GeneralRevenues_InvestmentEarnings,
			   @GeneralRevenues_Miscellaneous,
			   @GeneralRevenues_OtherRevenues,
			   @SpecialItem,
			   @ExtraordinaryItem,
			   @ContributionToPermanentFund,
			   @Transfers,
			   @Expenses_GeneralGovernment_LegislativeAndExecutive,
			   @Expenses_GeneralGovernment_Judicial,
			   @Expenses_PublicSafety,
			   @Expenses_PublicWorks,
			   @Expenses_Health,
			   @Expenses_HumanServices,
			   @Expenses_ConservationAndRecreation,
			   @Expenses_Intergovernmental,
			   @Expenses_InterestAndFiscalCharges,
			   @Expenses_DepreciationExpense,
			   @Expenses_OtherExpenses,
			   @NetPositionBeginningOfYear)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfActivities_GovernmentalActivitiesUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfActivities_GovernmentalActivitiesID int,
    @ProgramRevenues_ChargesForServicesAndSales decimal(19,4),
    @ProgramRevenues_OperatingGrantsContributionsAndInterest decimal(19,4),
    @ProgramRevenues_CapitalGrantsAndContributions decimal(19,4),
    @GeneralRevenues_PropertyTaxes decimal(19,4),
    @GeneralRevenues_SalesTaxes decimal(19,4),
    @GeneralRevenues_OtherTaxes decimal(19,4),
    @GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms decimal(19,4),
    @GeneralRevenues_GainOnSaleOfCapitalAsset decimal(19,4),
    @GeneralRevenues_PaymentInLieuOfTaxes decimal(19,4),
    @GeneralRevenues_UnrestrictedContributions decimal(19,4),
    @GeneralRevenues_InvestmentEarnings decimal(19,4),
    @GeneralRevenues_Miscellaneous decimal(19,4),
    @GeneralRevenues_OtherRevenues decimal(19,4),
    @SpecialItem decimal(19,4),
    @ExtraordinaryItem decimal(19,4),
    @ContributionToPermanentFund decimal(19,4),
    @Transfers decimal(19,4),
    @Expenses_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenses_GeneralGovernment_Judicial decimal(19,4),
    @Expenses_PublicSafety decimal(19,4),
    @Expenses_PublicWorks decimal(19,4),
    @Expenses_Health decimal(19,4),
    @Expenses_HumanServices decimal(19,4),
    @Expenses_ConservationAndRecreation decimal(19,4),
    @Expenses_Intergovernmental decimal(19,4),
    @Expenses_InterestAndFiscalCharges decimal(19,4),
    @Expenses_DepreciationExpense decimal(19,4),
    @Expenses_OtherExpenses decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfActivities_GovernmentalActivities]
	   SET [ProgramRevenues_ChargesForServicesAndSales] = @ProgramRevenues_ChargesForServicesAndSales 
		  ,[ProgramRevenues_OperatingGrantsContributionsAndInterest] = @ProgramRevenues_OperatingGrantsContributionsAndInterest 
		  ,[ProgramRevenues_CapitalGrantsAndContributions] = @ProgramRevenues_CapitalGrantsAndContributions 
		  ,[GeneralRevenues_PropertyTaxes] = @GeneralRevenues_PropertyTaxes 
		  ,[GeneralRevenues_SalesTaxes] = @GeneralRevenues_SalesTaxes 
		  ,[GeneralRevenues_OtherTaxes] = @GeneralRevenues_OtherTaxes 
		  ,[GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms] = @GeneralRevenues_GrantsAndEntitlementsNotRestrictedToSpecificPrograms 
		  ,[GeneralRevenues_GainOnSaleOfCapitalAsset] = @GeneralRevenues_GainOnSaleOfCapitalAsset 
		  ,[GeneralRevenues_PaymentInLieuOfTaxes] = @GeneralRevenues_PaymentInLieuOfTaxes 
		  ,[GeneralRevenues_UnrestrictedContributions] = @GeneralRevenues_UnrestrictedContributions 
		  ,[GeneralRevenues_InvestmentEarnings] = @GeneralRevenues_InvestmentEarnings 
		  ,[GeneralRevenues_Miscellaneous] = @GeneralRevenues_Miscellaneous 
		  ,[GeneralRevenues_OtherRevenues] = @GeneralRevenues_OtherRevenues 
		  ,[SpecialItem] = @SpecialItem 
		  ,[ExtraordinaryItem] = @ExtraordinaryItem 
		  ,[ContributionToPermanentFund] = @ContributionToPermanentFund 
		  ,[Transfers] = @Transfers 
		  ,[Expenses_GeneralGovernment_LegislativeAndExecutive] = @Expenses_GeneralGovernment_LegislativeAndExecutive 
		  ,[Expenses_GeneralGovernment_Judicial] = @Expenses_GeneralGovernment_Judicial 
		  ,[Expenses_PublicSafety] = @Expenses_PublicSafety 
		  ,[Expenses_PublicWorks] = @Expenses_PublicWorks 
		  ,[Expenses_Health] = @Expenses_Health 
		  ,[Expenses_HumanServices] = @Expenses_HumanServices 
		  ,[Expenses_ConservationAndRecreation] = @Expenses_ConservationAndRecreation 
		  ,[Expenses_Intergovernmental] = @Expenses_Intergovernmental 
		  ,[Expenses_InterestAndFiscalCharges] = @Expenses_InterestAndFiscalCharges 
		  ,[Expenses_DepreciationExpense] = @Expenses_DepreciationExpense 
		  ,[Expenses_OtherExpenses] = @Expenses_OtherExpenses 
		  ,[NetPositionBeginningOfYear] = @NetPositionBeginningOfYear 
		  
	 WHERE [StatementOfActivities_GovernmentalActivitiesID] = @StatementOfActivities_GovernmentalActivitiesID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_General]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_General](
	[BalanceSheet_GovernmentalFunds_GeneralID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_Investments] decimal(19,4) NULL
	,[Assets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_AccruedInterestReceivable] decimal(19,4) NULL
	,[Assets_AccountsReceivable] decimal(19,4) NULL
	,[Assets_InterfundReceivable] decimal(19,4) NULL
	,[Assets_DueFromOtherFunds] decimal(19,4) NULL
	,[Assets_IntergovernmentalReceivable] decimal(19,4) NULL
	,[Assets_PrepaidItems] decimal(19,4) NULL
	,[Assets_PropertyTaxesReceivable] decimal(19,4) NULL
	,[Assets_SalesTaxReceivable] decimal(19,4) NULL
	,[Assets_RevenueInLieuOfTaxesReceivable] decimal(19,4) NULL
	,[Assets_DueFromOtherGovernments] decimal(19,4) NULL
	,[Assets_NotesReceivable] decimal(19,4) NULL
	,[Assets_LoansReceivable] decimal(19,4) NULL
	,[Assets_OtherAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_AccruedWagesAndBenefits] decimal(19,4) NULL
	,[Liabilities_ContractsPayable] decimal(19,4) NULL
	,[Liabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_DueToOtherGovernments] decimal(19,4) NULL
	,[Liabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_RetainagePayable] decimal(19,4) NULL
	,[Liabilities_InterfundPayable] decimal(19,4) NULL
	,[Liabilities_DueToOtherFunds] decimal(19,4) NULL
	,[Liabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_NotesPayable] decimal(19,4) NULL
	,[Liabilities_OtherLiabilities] decimal(19,4) NULL
	,[Liabilities_TotalDeferredInflowsOfResources] decimal(19,4) NULL
	,[FundBalances_Nonspendable] decimal(19,4) NULL
	,[FundBalances_Restricted] decimal(19,4) NULL
	,[FundBalances_Committed] decimal(19,4) NULL
	,[FundBalances_Assigned] decimal(19,4) NULL
	,[FundBalances_Unassigned] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_BalanceSheet_GovernmentalFunds_General] PRIMARY KEY CLUSTERED 
(
	[BalanceSheet_GovernmentalFunds_GeneralID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralGetByID]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_GeneralID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [BalanceSheet_GovernmentalFunds_GeneralID]
          ,[Assets_CashAndCashEquivalents]
          ,[Assets_Investments]
          ,[Assets_InventoryHeldForResale]
          ,[Assets_MaterialsAndSuppliesInventory]
          ,[Assets_AccruedInterestReceivable]
          ,[Assets_AccountsReceivable]
          ,[Assets_InterfundReceivable]
          ,[Assets_DueFromOtherFunds]
          ,[Assets_IntergovernmentalReceivable]
          ,[Assets_PrepaidItems]
          ,[Assets_PropertyTaxesReceivable]
          ,[Assets_SalesTaxReceivable]
          ,[Assets_RevenueInLieuOfTaxesReceivable]
          ,[Assets_DueFromOtherGovernments]
          ,[Assets_NotesReceivable]
          ,[Assets_LoansReceivable]
          ,[Assets_OtherAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_AccountsPayable]
          ,[Liabilities_AccruedWagesAndBenefits]
          ,[Liabilities_ContractsPayable]
          ,[Liabilities_IntergovernmentalPayable]
          ,[Liabilities_DueToOtherGovernments]
          ,[Liabilities_MaturedInterestPayable]
          ,[Liabilities_MaturedBondsPayable]
          ,[Liabilities_RetainagePayable]
          ,[Liabilities_InterfundPayable]
          ,[Liabilities_DueToOtherFunds]
          ,[Liabilities_ClaimsPayable]
          ,[Liabilities_UnearnedRevenue]
          ,[Liabilities_NotesPayable]
          ,[Liabilities_OtherLiabilities]
          ,[Liabilities_TotalDeferredInflowsOfResources]
          ,[FundBalances_Nonspendable]
          ,[FundBalances_Restricted]
          ,[FundBalances_Committed]
          ,[FundBalances_Assigned]
          ,[FundBalances_Unassigned]
	  FROM [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_General]
	 WHERE [BalanceSheet_GovernmentalFunds_GeneralID] = @BalanceSheet_GovernmentalFunds_GeneralID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralDelete]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_GeneralID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_General]
		  WHERE [BalanceSheet_GovernmentalFunds_GeneralID] = @BalanceSheet_GovernmentalFunds_GeneralID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InterfundReceivable decimal(19,4),
    @Assets_DueFromOtherFunds decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_InterfundPayable decimal(19,4),
    @Liabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @FundBalances_Nonspendable decimal(19,4),
    @FundBalances_Restricted decimal(19,4),
    @FundBalances_Committed decimal(19,4),
    @FundBalances_Assigned decimal(19,4),
    @FundBalances_Unassigned decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_General]
			   ([Assets_CashAndCashEquivalents]
			   ,[Assets_Investments]
			   ,[Assets_InventoryHeldForResale]
			   ,[Assets_MaterialsAndSuppliesInventory]
			   ,[Assets_AccruedInterestReceivable]
			   ,[Assets_AccountsReceivable]
			   ,[Assets_InterfundReceivable]
			   ,[Assets_DueFromOtherFunds]
			   ,[Assets_IntergovernmentalReceivable]
			   ,[Assets_PrepaidItems]
			   ,[Assets_PropertyTaxesReceivable]
			   ,[Assets_SalesTaxReceivable]
			   ,[Assets_RevenueInLieuOfTaxesReceivable]
			   ,[Assets_DueFromOtherGovernments]
			   ,[Assets_NotesReceivable]
			   ,[Assets_LoansReceivable]
			   ,[Assets_OtherAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_AccountsPayable]
			   ,[Liabilities_AccruedWagesAndBenefits]
			   ,[Liabilities_ContractsPayable]
			   ,[Liabilities_IntergovernmentalPayable]
			   ,[Liabilities_DueToOtherGovernments]
			   ,[Liabilities_MaturedInterestPayable]
			   ,[Liabilities_MaturedBondsPayable]
			   ,[Liabilities_RetainagePayable]
			   ,[Liabilities_InterfundPayable]
			   ,[Liabilities_DueToOtherFunds]
			   ,[Liabilities_ClaimsPayable]
			   ,[Liabilities_UnearnedRevenue]
			   ,[Liabilities_NotesPayable]
			   ,[Liabilities_OtherLiabilities]
			   ,[Liabilities_TotalDeferredInflowsOfResources]
			   ,[FundBalances_Nonspendable]
			   ,[FundBalances_Restricted]
			   ,[FundBalances_Committed]
			   ,[FundBalances_Assigned]
			   ,[FundBalances_Unassigned])
			   
		VALUES (@Assets_CashAndCashEquivalents,
			   @Assets_Investments,
			   @Assets_InventoryHeldForResale,
			   @Assets_MaterialsAndSuppliesInventory,
			   @Assets_AccruedInterestReceivable,
			   @Assets_AccountsReceivable,
			   @Assets_InterfundReceivable,
			   @Assets_DueFromOtherFunds,
			   @Assets_IntergovernmentalReceivable,
			   @Assets_PrepaidItems,
			   @Assets_PropertyTaxesReceivable,
			   @Assets_SalesTaxReceivable,
			   @Assets_RevenueInLieuOfTaxesReceivable,
			   @Assets_DueFromOtherGovernments,
			   @Assets_NotesReceivable,
			   @Assets_LoansReceivable,
			   @Assets_OtherAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_AccountsPayable,
			   @Liabilities_AccruedWagesAndBenefits,
			   @Liabilities_ContractsPayable,
			   @Liabilities_IntergovernmentalPayable,
			   @Liabilities_DueToOtherGovernments,
			   @Liabilities_MaturedInterestPayable,
			   @Liabilities_MaturedBondsPayable,
			   @Liabilities_RetainagePayable,
			   @Liabilities_InterfundPayable,
			   @Liabilities_DueToOtherFunds,
			   @Liabilities_ClaimsPayable,
			   @Liabilities_UnearnedRevenue,
			   @Liabilities_NotesPayable,
			   @Liabilities_OtherLiabilities,
			   @Liabilities_TotalDeferredInflowsOfResources,
			   @FundBalances_Nonspendable,
			   @FundBalances_Restricted,
			   @FundBalances_Committed,
			   @FundBalances_Assigned,
			   @FundBalances_Unassigned)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_GeneralUpdate]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_GeneralID int,
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InterfundReceivable decimal(19,4),
    @Assets_DueFromOtherFunds decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_InterfundPayable decimal(19,4),
    @Liabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @FundBalances_Nonspendable decimal(19,4),
    @FundBalances_Restricted decimal(19,4),
    @FundBalances_Committed decimal(19,4),
    @FundBalances_Assigned decimal(19,4),
    @FundBalances_Unassigned decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_General]
	   SET [Assets_CashAndCashEquivalents] = @Assets_CashAndCashEquivalents 
		  ,[Assets_Investments] = @Assets_Investments 
		  ,[Assets_InventoryHeldForResale] = @Assets_InventoryHeldForResale 
		  ,[Assets_MaterialsAndSuppliesInventory] = @Assets_MaterialsAndSuppliesInventory 
		  ,[Assets_AccruedInterestReceivable] = @Assets_AccruedInterestReceivable 
		  ,[Assets_AccountsReceivable] = @Assets_AccountsReceivable 
		  ,[Assets_InterfundReceivable] = @Assets_InterfundReceivable 
		  ,[Assets_DueFromOtherFunds] = @Assets_DueFromOtherFunds 
		  ,[Assets_IntergovernmentalReceivable] = @Assets_IntergovernmentalReceivable 
		  ,[Assets_PrepaidItems] = @Assets_PrepaidItems 
		  ,[Assets_PropertyTaxesReceivable] = @Assets_PropertyTaxesReceivable 
		  ,[Assets_SalesTaxReceivable] = @Assets_SalesTaxReceivable 
		  ,[Assets_RevenueInLieuOfTaxesReceivable] = @Assets_RevenueInLieuOfTaxesReceivable 
		  ,[Assets_DueFromOtherGovernments] = @Assets_DueFromOtherGovernments 
		  ,[Assets_NotesReceivable] = @Assets_NotesReceivable 
		  ,[Assets_LoansReceivable] = @Assets_LoansReceivable 
		  ,[Assets_OtherAssets] = @Assets_OtherAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_AccountsPayable] = @Liabilities_AccountsPayable 
		  ,[Liabilities_AccruedWagesAndBenefits] = @Liabilities_AccruedWagesAndBenefits 
		  ,[Liabilities_ContractsPayable] = @Liabilities_ContractsPayable 
		  ,[Liabilities_IntergovernmentalPayable] = @Liabilities_IntergovernmentalPayable 
		  ,[Liabilities_DueToOtherGovernments] = @Liabilities_DueToOtherGovernments 
		  ,[Liabilities_MaturedInterestPayable] = @Liabilities_MaturedInterestPayable 
		  ,[Liabilities_MaturedBondsPayable] = @Liabilities_MaturedBondsPayable 
		  ,[Liabilities_RetainagePayable] = @Liabilities_RetainagePayable 
		  ,[Liabilities_InterfundPayable] = @Liabilities_InterfundPayable 
		  ,[Liabilities_DueToOtherFunds] = @Liabilities_DueToOtherFunds 
		  ,[Liabilities_ClaimsPayable] = @Liabilities_ClaimsPayable 
		  ,[Liabilities_UnearnedRevenue] = @Liabilities_UnearnedRevenue 
		  ,[Liabilities_NotesPayable] = @Liabilities_NotesPayable 
		  ,[Liabilities_OtherLiabilities] = @Liabilities_OtherLiabilities 
		  ,[Liabilities_TotalDeferredInflowsOfResources] = @Liabilities_TotalDeferredInflowsOfResources 
		  ,[FundBalances_Nonspendable] = @FundBalances_Nonspendable 
		  ,[FundBalances_Restricted] = @FundBalances_Restricted 
		  ,[FundBalances_Committed] = @FundBalances_Committed 
		  ,[FundBalances_Assigned] = @FundBalances_Assigned 
		  ,[FundBalances_Unassigned] = @FundBalances_Unassigned 
		  
	 WHERE [BalanceSheet_GovernmentalFunds_GeneralID] = @BalanceSheet_GovernmentalFunds_GeneralID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmental]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmental](
	[BalanceSheet_GovernmentalFunds_TotalGovernmentalID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_Investments] decimal(19,4) NULL
	,[Assets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_AccruedInterestReceivable] decimal(19,4) NULL
	,[Assets_AccountsReceivable] decimal(19,4) NULL
	,[Assets_InterfundReceivable] decimal(19,4) NULL
	,[Assets_DueFromOtherFunds] decimal(19,4) NULL
	,[Assets_IntergovernmentalReceivable] decimal(19,4) NULL
	,[Assets_PrepaidItems] decimal(19,4) NULL
	,[Assets_PropertyTaxesReceivable] decimal(19,4) NULL
	,[Assets_SalesTaxReceivable] decimal(19,4) NULL
	,[Assets_RevenueInLieuOfTaxesReceivable] decimal(19,4) NULL
	,[Assets_DueFromOtherGovernments] decimal(19,4) NULL
	,[Assets_NotesReceivable] decimal(19,4) NULL
	,[Assets_LoansReceivable] decimal(19,4) NULL
	,[Assets_OtherAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_AccruedWagesAndBenefits] decimal(19,4) NULL
	,[Liabilities_ContractsPayable] decimal(19,4) NULL
	,[Liabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_DueToOtherGovernments] decimal(19,4) NULL
	,[Liabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_RetainagePayable] decimal(19,4) NULL
	,[Liabilities_InterfundPayable] decimal(19,4) NULL
	,[Liabilities_DueToOtherFunds] decimal(19,4) NULL
	,[Liabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_NotesPayable] decimal(19,4) NULL
	,[Liabilities_OtherLiabilities] decimal(19,4) NULL
	,[Liabilities_TotalDeferredInflowsOfResources] decimal(19,4) NULL
	,[FundBalances_Nonspendable] decimal(19,4) NULL
	,[FundBalances_Restricted] decimal(19,4) NULL
	,[FundBalances_Committed] decimal(19,4) NULL
	,[FundBalances_Assigned] decimal(19,4) NULL
	,[FundBalances_Unassigned] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmental] PRIMARY KEY CLUSTERED 
(
	[BalanceSheet_GovernmentalFunds_TotalGovernmentalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalGetByID]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_TotalGovernmentalID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [BalanceSheet_GovernmentalFunds_TotalGovernmentalID]
          ,[Assets_CashAndCashEquivalents]
          ,[Assets_Investments]
          ,[Assets_InventoryHeldForResale]
          ,[Assets_MaterialsAndSuppliesInventory]
          ,[Assets_AccruedInterestReceivable]
          ,[Assets_AccountsReceivable]
          ,[Assets_InterfundReceivable]
          ,[Assets_DueFromOtherFunds]
          ,[Assets_IntergovernmentalReceivable]
          ,[Assets_PrepaidItems]
          ,[Assets_PropertyTaxesReceivable]
          ,[Assets_SalesTaxReceivable]
          ,[Assets_RevenueInLieuOfTaxesReceivable]
          ,[Assets_DueFromOtherGovernments]
          ,[Assets_NotesReceivable]
          ,[Assets_LoansReceivable]
          ,[Assets_OtherAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_AccountsPayable]
          ,[Liabilities_AccruedWagesAndBenefits]
          ,[Liabilities_ContractsPayable]
          ,[Liabilities_IntergovernmentalPayable]
          ,[Liabilities_DueToOtherGovernments]
          ,[Liabilities_MaturedInterestPayable]
          ,[Liabilities_MaturedBondsPayable]
          ,[Liabilities_RetainagePayable]
          ,[Liabilities_InterfundPayable]
          ,[Liabilities_DueToOtherFunds]
          ,[Liabilities_ClaimsPayable]
          ,[Liabilities_UnearnedRevenue]
          ,[Liabilities_NotesPayable]
          ,[Liabilities_OtherLiabilities]
          ,[Liabilities_TotalDeferredInflowsOfResources]
          ,[FundBalances_Nonspendable]
          ,[FundBalances_Restricted]
          ,[FundBalances_Committed]
          ,[FundBalances_Assigned]
          ,[FundBalances_Unassigned]
	  FROM [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_TotalGovernmental]
	 WHERE [BalanceSheet_GovernmentalFunds_TotalGovernmentalID] = @BalanceSheet_GovernmentalFunds_TotalGovernmentalID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalDelete]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_TotalGovernmentalID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_TotalGovernmental]
		  WHERE [BalanceSheet_GovernmentalFunds_TotalGovernmentalID] = @BalanceSheet_GovernmentalFunds_TotalGovernmentalID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InterfundReceivable decimal(19,4),
    @Assets_DueFromOtherFunds decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_InterfundPayable decimal(19,4),
    @Liabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @FundBalances_Nonspendable decimal(19,4),
    @FundBalances_Restricted decimal(19,4),
    @FundBalances_Committed decimal(19,4),
    @FundBalances_Assigned decimal(19,4),
    @FundBalances_Unassigned decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_TotalGovernmental]
			   ([Assets_CashAndCashEquivalents]
			   ,[Assets_Investments]
			   ,[Assets_InventoryHeldForResale]
			   ,[Assets_MaterialsAndSuppliesInventory]
			   ,[Assets_AccruedInterestReceivable]
			   ,[Assets_AccountsReceivable]
			   ,[Assets_InterfundReceivable]
			   ,[Assets_DueFromOtherFunds]
			   ,[Assets_IntergovernmentalReceivable]
			   ,[Assets_PrepaidItems]
			   ,[Assets_PropertyTaxesReceivable]
			   ,[Assets_SalesTaxReceivable]
			   ,[Assets_RevenueInLieuOfTaxesReceivable]
			   ,[Assets_DueFromOtherGovernments]
			   ,[Assets_NotesReceivable]
			   ,[Assets_LoansReceivable]
			   ,[Assets_OtherAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_AccountsPayable]
			   ,[Liabilities_AccruedWagesAndBenefits]
			   ,[Liabilities_ContractsPayable]
			   ,[Liabilities_IntergovernmentalPayable]
			   ,[Liabilities_DueToOtherGovernments]
			   ,[Liabilities_MaturedInterestPayable]
			   ,[Liabilities_MaturedBondsPayable]
			   ,[Liabilities_RetainagePayable]
			   ,[Liabilities_InterfundPayable]
			   ,[Liabilities_DueToOtherFunds]
			   ,[Liabilities_ClaimsPayable]
			   ,[Liabilities_UnearnedRevenue]
			   ,[Liabilities_NotesPayable]
			   ,[Liabilities_OtherLiabilities]
			   ,[Liabilities_TotalDeferredInflowsOfResources]
			   ,[FundBalances_Nonspendable]
			   ,[FundBalances_Restricted]
			   ,[FundBalances_Committed]
			   ,[FundBalances_Assigned]
			   ,[FundBalances_Unassigned])
			   
		VALUES (@Assets_CashAndCashEquivalents,
			   @Assets_Investments,
			   @Assets_InventoryHeldForResale,
			   @Assets_MaterialsAndSuppliesInventory,
			   @Assets_AccruedInterestReceivable,
			   @Assets_AccountsReceivable,
			   @Assets_InterfundReceivable,
			   @Assets_DueFromOtherFunds,
			   @Assets_IntergovernmentalReceivable,
			   @Assets_PrepaidItems,
			   @Assets_PropertyTaxesReceivable,
			   @Assets_SalesTaxReceivable,
			   @Assets_RevenueInLieuOfTaxesReceivable,
			   @Assets_DueFromOtherGovernments,
			   @Assets_NotesReceivable,
			   @Assets_LoansReceivable,
			   @Assets_OtherAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_AccountsPayable,
			   @Liabilities_AccruedWagesAndBenefits,
			   @Liabilities_ContractsPayable,
			   @Liabilities_IntergovernmentalPayable,
			   @Liabilities_DueToOtherGovernments,
			   @Liabilities_MaturedInterestPayable,
			   @Liabilities_MaturedBondsPayable,
			   @Liabilities_RetainagePayable,
			   @Liabilities_InterfundPayable,
			   @Liabilities_DueToOtherFunds,
			   @Liabilities_ClaimsPayable,
			   @Liabilities_UnearnedRevenue,
			   @Liabilities_NotesPayable,
			   @Liabilities_OtherLiabilities,
			   @Liabilities_TotalDeferredInflowsOfResources,
			   @FundBalances_Nonspendable,
			   @FundBalances_Restricted,
			   @FundBalances_Committed,
			   @FundBalances_Assigned,
			   @FundBalances_Unassigned)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_BalanceSheet_GovernmentalFunds_TotalGovernmentalUpdate]
	-- Add the parameters for the stored procedure here
    @BalanceSheet_GovernmentalFunds_TotalGovernmentalID int,
    @Assets_CashAndCashEquivalents decimal(19,4),
    @Assets_Investments decimal(19,4),
    @Assets_InventoryHeldForResale decimal(19,4),
    @Assets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_AccruedInterestReceivable decimal(19,4),
    @Assets_AccountsReceivable decimal(19,4),
    @Assets_InterfundReceivable decimal(19,4),
    @Assets_DueFromOtherFunds decimal(19,4),
    @Assets_IntergovernmentalReceivable decimal(19,4),
    @Assets_PrepaidItems decimal(19,4),
    @Assets_PropertyTaxesReceivable decimal(19,4),
    @Assets_SalesTaxReceivable decimal(19,4),
    @Assets_RevenueInLieuOfTaxesReceivable decimal(19,4),
    @Assets_DueFromOtherGovernments decimal(19,4),
    @Assets_NotesReceivable decimal(19,4),
    @Assets_LoansReceivable decimal(19,4),
    @Assets_OtherAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_AccountsPayable decimal(19,4),
    @Liabilities_AccruedWagesAndBenefits decimal(19,4),
    @Liabilities_ContractsPayable decimal(19,4),
    @Liabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_DueToOtherGovernments decimal(19,4),
    @Liabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_RetainagePayable decimal(19,4),
    @Liabilities_InterfundPayable decimal(19,4),
    @Liabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_ClaimsPayable decimal(19,4),
    @Liabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_NotesPayable decimal(19,4),
    @Liabilities_OtherLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @FundBalances_Nonspendable decimal(19,4),
    @FundBalances_Restricted decimal(19,4),
    @FundBalances_Committed decimal(19,4),
    @FundBalances_Assigned decimal(19,4),
    @FundBalances_Unassigned decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[BalanceSheet_GovernmentalFunds_TotalGovernmental]
	   SET [Assets_CashAndCashEquivalents] = @Assets_CashAndCashEquivalents 
		  ,[Assets_Investments] = @Assets_Investments 
		  ,[Assets_InventoryHeldForResale] = @Assets_InventoryHeldForResale 
		  ,[Assets_MaterialsAndSuppliesInventory] = @Assets_MaterialsAndSuppliesInventory 
		  ,[Assets_AccruedInterestReceivable] = @Assets_AccruedInterestReceivable 
		  ,[Assets_AccountsReceivable] = @Assets_AccountsReceivable 
		  ,[Assets_InterfundReceivable] = @Assets_InterfundReceivable 
		  ,[Assets_DueFromOtherFunds] = @Assets_DueFromOtherFunds 
		  ,[Assets_IntergovernmentalReceivable] = @Assets_IntergovernmentalReceivable 
		  ,[Assets_PrepaidItems] = @Assets_PrepaidItems 
		  ,[Assets_PropertyTaxesReceivable] = @Assets_PropertyTaxesReceivable 
		  ,[Assets_SalesTaxReceivable] = @Assets_SalesTaxReceivable 
		  ,[Assets_RevenueInLieuOfTaxesReceivable] = @Assets_RevenueInLieuOfTaxesReceivable 
		  ,[Assets_DueFromOtherGovernments] = @Assets_DueFromOtherGovernments 
		  ,[Assets_NotesReceivable] = @Assets_NotesReceivable 
		  ,[Assets_LoansReceivable] = @Assets_LoansReceivable 
		  ,[Assets_OtherAssets] = @Assets_OtherAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_AccountsPayable] = @Liabilities_AccountsPayable 
		  ,[Liabilities_AccruedWagesAndBenefits] = @Liabilities_AccruedWagesAndBenefits 
		  ,[Liabilities_ContractsPayable] = @Liabilities_ContractsPayable 
		  ,[Liabilities_IntergovernmentalPayable] = @Liabilities_IntergovernmentalPayable 
		  ,[Liabilities_DueToOtherGovernments] = @Liabilities_DueToOtherGovernments 
		  ,[Liabilities_MaturedInterestPayable] = @Liabilities_MaturedInterestPayable 
		  ,[Liabilities_MaturedBondsPayable] = @Liabilities_MaturedBondsPayable 
		  ,[Liabilities_RetainagePayable] = @Liabilities_RetainagePayable 
		  ,[Liabilities_InterfundPayable] = @Liabilities_InterfundPayable 
		  ,[Liabilities_DueToOtherFunds] = @Liabilities_DueToOtherFunds 
		  ,[Liabilities_ClaimsPayable] = @Liabilities_ClaimsPayable 
		  ,[Liabilities_UnearnedRevenue] = @Liabilities_UnearnedRevenue 
		  ,[Liabilities_NotesPayable] = @Liabilities_NotesPayable 
		  ,[Liabilities_OtherLiabilities] = @Liabilities_OtherLiabilities 
		  ,[Liabilities_TotalDeferredInflowsOfResources] = @Liabilities_TotalDeferredInflowsOfResources 
		  ,[FundBalances_Nonspendable] = @FundBalances_Nonspendable 
		  ,[FundBalances_Restricted] = @FundBalances_Restricted 
		  ,[FundBalances_Committed] = @FundBalances_Committed 
		  ,[FundBalances_Assigned] = @FundBalances_Assigned 
		  ,[FundBalances_Unassigned] = @FundBalances_Unassigned 
		  
	 WHERE [BalanceSheet_GovernmentalFunds_TotalGovernmentalID] = @BalanceSheet_GovernmentalFunds_TotalGovernmentalID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General](
	[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID] [int] IDENTITY(1,1) NOT NULL
	,[Revenues_PropertyTaxes] decimal(19,4) NULL
	,[Revenues_SalesTaxes] decimal(19,4) NULL
	,[Revenues_Intergovernmental] decimal(19,4) NULL
	,[Revenues_Interest] decimal(19,4) NULL
	,[Revenues_LicensesAndPermits] decimal(19,4) NULL
	,[Revenues_FinesAndForfeitures] decimal(19,4) NULL
	,[Revenues_Rentals] decimal(19,4) NULL
	,[Revenues_ChargesForServices] decimal(19,4) NULL
	,[Revenues_ContributionsAndDonations] decimal(19,4) NULL
	,[Revenues_SpecialAssessments] decimal(19,4) NULL
	,[Revenues_OtherRevenues] decimal(19,4) NULL
	,[Expenditures_GeneralGovernment_LegislativeAndExecutive] decimal(19,4) NULL
	,[Expenditures_GeneralGovernment_Judicial] decimal(19,4) NULL
	,[Expenditures_PublicSafety] decimal(19,4) NULL
	,[Expenditures_PublicWorks] decimal(19,4) NULL
	,[Expenditures_Health] decimal(19,4) NULL
	,[Expenditures_HumanServices] decimal(19,4) NULL
	,[Expenditures_ConservationAndRecreation] decimal(19,4) NULL
	,[Expenditures_CapitalOutlay] decimal(19,4) NULL
	,[Expenditures_Intergovernmental] decimal(19,4) NULL
	,[Expenditures_DebtService_PrincipalRetirement] decimal(19,4) NULL
	,[Expenditures_DebtService_InterestAndFiscalCharges] decimal(19,4) NULL
	,[Expenditures_DebtService_BondIssuanceCosts] decimal(19,4) NULL
	,[Expenditures_DebtService_Other] decimal(19,4) NULL
	,[Expenditures_OtherExpenditures] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_SaleOfCapitalAssets] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_InceptionOfCapitalLease] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_GeneralObligationBondsIssued] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_RefundingBondsIssued] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_PremiumOnDebtIssuance] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_TransfersIn] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_TransfersOut] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_OtherFinancingSources] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_OtherFinancingUses] decimal(19,4) NULL
	,[SpecialAndExtraordinaryItems_SpecialItem] decimal(19,4) NULL
	,[SpecialAndExtraordinaryItems_ExtraordinaryItem] decimal(19,4) NULL
	,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear] decimal(19,4) NULL
	,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General] PRIMARY KEY CLUSTERED 
(
	[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID]
          ,[Revenues_PropertyTaxes]
          ,[Revenues_SalesTaxes]
          ,[Revenues_Intergovernmental]
          ,[Revenues_Interest]
          ,[Revenues_LicensesAndPermits]
          ,[Revenues_FinesAndForfeitures]
          ,[Revenues_Rentals]
          ,[Revenues_ChargesForServices]
          ,[Revenues_ContributionsAndDonations]
          ,[Revenues_SpecialAssessments]
          ,[Revenues_OtherRevenues]
          ,[Expenditures_GeneralGovernment_LegislativeAndExecutive]
          ,[Expenditures_GeneralGovernment_Judicial]
          ,[Expenditures_PublicSafety]
          ,[Expenditures_PublicWorks]
          ,[Expenditures_Health]
          ,[Expenditures_HumanServices]
          ,[Expenditures_ConservationAndRecreation]
          ,[Expenditures_CapitalOutlay]
          ,[Expenditures_Intergovernmental]
          ,[Expenditures_DebtService_PrincipalRetirement]
          ,[Expenditures_DebtService_InterestAndFiscalCharges]
          ,[Expenditures_DebtService_BondIssuanceCosts]
          ,[Expenditures_DebtService_Other]
          ,[Expenditures_OtherExpenditures]
          ,[OtherFinancingSourcesUses_SaleOfCapitalAssets]
          ,[OtherFinancingSourcesUses_InceptionOfCapitalLease]
          ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued]
          ,[OtherFinancingSourcesUses_RefundingBondsIssued]
          ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance]
          ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent]
          ,[OtherFinancingSourcesUses_TransfersIn]
          ,[OtherFinancingSourcesUses_TransfersOut]
          ,[OtherFinancingSourcesUses_OtherFinancingSources]
          ,[OtherFinancingSourcesUses_OtherFinancingUses]
          ,[SpecialAndExtraordinaryItems_SpecialItem]
          ,[SpecialAndExtraordinaryItems_ExtraordinaryItem]
          ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear]
          ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General]
	 WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General]
		  WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralAdd]
	-- Add the parameters for the stored procedure here
	
    @Revenues_PropertyTaxes decimal(19,4),
    @Revenues_SalesTaxes decimal(19,4),
    @Revenues_Intergovernmental decimal(19,4),
    @Revenues_Interest decimal(19,4),
    @Revenues_LicensesAndPermits decimal(19,4),
    @Revenues_FinesAndForfeitures decimal(19,4),
    @Revenues_Rentals decimal(19,4),
    @Revenues_ChargesForServices decimal(19,4),
    @Revenues_ContributionsAndDonations decimal(19,4),
    @Revenues_SpecialAssessments decimal(19,4),
    @Revenues_OtherRevenues decimal(19,4),
    @Expenditures_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenditures_GeneralGovernment_Judicial decimal(19,4),
    @Expenditures_PublicSafety decimal(19,4),
    @Expenditures_PublicWorks decimal(19,4),
    @Expenditures_Health decimal(19,4),
    @Expenditures_HumanServices decimal(19,4),
    @Expenditures_ConservationAndRecreation decimal(19,4),
    @Expenditures_CapitalOutlay decimal(19,4),
    @Expenditures_Intergovernmental decimal(19,4),
    @Expenditures_DebtService_PrincipalRetirement decimal(19,4),
    @Expenditures_DebtService_InterestAndFiscalCharges decimal(19,4),
    @Expenditures_DebtService_BondIssuanceCosts decimal(19,4),
    @Expenditures_DebtService_Other decimal(19,4),
    @Expenditures_OtherExpenditures decimal(19,4),
    @OtherFinancingSourcesUses_SaleOfCapitalAssets decimal(19,4),
    @OtherFinancingSourcesUses_InceptionOfCapitalLease decimal(19,4),
    @OtherFinancingSourcesUses_GeneralObligationBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_RefundingBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_PremiumOnDebtIssuance decimal(19,4),
    @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent decimal(19,4),
    @OtherFinancingSourcesUses_TransfersIn decimal(19,4),
    @OtherFinancingSourcesUses_TransfersOut decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingSources decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingUses decimal(19,4),
    @SpecialAndExtraordinaryItems_SpecialItem decimal(19,4),
    @SpecialAndExtraordinaryItems_ExtraordinaryItem decimal(19,4),
    @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear decimal(19,4),
    @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General]
			   ([Revenues_PropertyTaxes]
			   ,[Revenues_SalesTaxes]
			   ,[Revenues_Intergovernmental]
			   ,[Revenues_Interest]
			   ,[Revenues_LicensesAndPermits]
			   ,[Revenues_FinesAndForfeitures]
			   ,[Revenues_Rentals]
			   ,[Revenues_ChargesForServices]
			   ,[Revenues_ContributionsAndDonations]
			   ,[Revenues_SpecialAssessments]
			   ,[Revenues_OtherRevenues]
			   ,[Expenditures_GeneralGovernment_LegislativeAndExecutive]
			   ,[Expenditures_GeneralGovernment_Judicial]
			   ,[Expenditures_PublicSafety]
			   ,[Expenditures_PublicWorks]
			   ,[Expenditures_Health]
			   ,[Expenditures_HumanServices]
			   ,[Expenditures_ConservationAndRecreation]
			   ,[Expenditures_CapitalOutlay]
			   ,[Expenditures_Intergovernmental]
			   ,[Expenditures_DebtService_PrincipalRetirement]
			   ,[Expenditures_DebtService_InterestAndFiscalCharges]
			   ,[Expenditures_DebtService_BondIssuanceCosts]
			   ,[Expenditures_DebtService_Other]
			   ,[Expenditures_OtherExpenditures]
			   ,[OtherFinancingSourcesUses_SaleOfCapitalAssets]
			   ,[OtherFinancingSourcesUses_InceptionOfCapitalLease]
			   ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued]
			   ,[OtherFinancingSourcesUses_RefundingBondsIssued]
			   ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance]
			   ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent]
			   ,[OtherFinancingSourcesUses_TransfersIn]
			   ,[OtherFinancingSourcesUses_TransfersOut]
			   ,[OtherFinancingSourcesUses_OtherFinancingSources]
			   ,[OtherFinancingSourcesUses_OtherFinancingUses]
			   ,[SpecialAndExtraordinaryItems_SpecialItem]
			   ,[SpecialAndExtraordinaryItems_ExtraordinaryItem]
			   ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear]
			   ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets])
			   
		VALUES (@Revenues_PropertyTaxes,
			   @Revenues_SalesTaxes,
			   @Revenues_Intergovernmental,
			   @Revenues_Interest,
			   @Revenues_LicensesAndPermits,
			   @Revenues_FinesAndForfeitures,
			   @Revenues_Rentals,
			   @Revenues_ChargesForServices,
			   @Revenues_ContributionsAndDonations,
			   @Revenues_SpecialAssessments,
			   @Revenues_OtherRevenues,
			   @Expenditures_GeneralGovernment_LegislativeAndExecutive,
			   @Expenditures_GeneralGovernment_Judicial,
			   @Expenditures_PublicSafety,
			   @Expenditures_PublicWorks,
			   @Expenditures_Health,
			   @Expenditures_HumanServices,
			   @Expenditures_ConservationAndRecreation,
			   @Expenditures_CapitalOutlay,
			   @Expenditures_Intergovernmental,
			   @Expenditures_DebtService_PrincipalRetirement,
			   @Expenditures_DebtService_InterestAndFiscalCharges,
			   @Expenditures_DebtService_BondIssuanceCosts,
			   @Expenditures_DebtService_Other,
			   @Expenditures_OtherExpenditures,
			   @OtherFinancingSourcesUses_SaleOfCapitalAssets,
			   @OtherFinancingSourcesUses_InceptionOfCapitalLease,
			   @OtherFinancingSourcesUses_GeneralObligationBondsIssued,
			   @OtherFinancingSourcesUses_RefundingBondsIssued,
			   @OtherFinancingSourcesUses_PremiumOnDebtIssuance,
			   @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent,
			   @OtherFinancingSourcesUses_TransfersIn,
			   @OtherFinancingSourcesUses_TransfersOut,
			   @OtherFinancingSourcesUses_OtherFinancingSources,
			   @OtherFinancingSourcesUses_OtherFinancingUses,
			   @SpecialAndExtraordinaryItems_SpecialItem,
			   @SpecialAndExtraordinaryItems_ExtraordinaryItem,
			   @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear,
			   @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID int,
    @Revenues_PropertyTaxes decimal(19,4),
    @Revenues_SalesTaxes decimal(19,4),
    @Revenues_Intergovernmental decimal(19,4),
    @Revenues_Interest decimal(19,4),
    @Revenues_LicensesAndPermits decimal(19,4),
    @Revenues_FinesAndForfeitures decimal(19,4),
    @Revenues_Rentals decimal(19,4),
    @Revenues_ChargesForServices decimal(19,4),
    @Revenues_ContributionsAndDonations decimal(19,4),
    @Revenues_SpecialAssessments decimal(19,4),
    @Revenues_OtherRevenues decimal(19,4),
    @Expenditures_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenditures_GeneralGovernment_Judicial decimal(19,4),
    @Expenditures_PublicSafety decimal(19,4),
    @Expenditures_PublicWorks decimal(19,4),
    @Expenditures_Health decimal(19,4),
    @Expenditures_HumanServices decimal(19,4),
    @Expenditures_ConservationAndRecreation decimal(19,4),
    @Expenditures_CapitalOutlay decimal(19,4),
    @Expenditures_Intergovernmental decimal(19,4),
    @Expenditures_DebtService_PrincipalRetirement decimal(19,4),
    @Expenditures_DebtService_InterestAndFiscalCharges decimal(19,4),
    @Expenditures_DebtService_BondIssuanceCosts decimal(19,4),
    @Expenditures_DebtService_Other decimal(19,4),
    @Expenditures_OtherExpenditures decimal(19,4),
    @OtherFinancingSourcesUses_SaleOfCapitalAssets decimal(19,4),
    @OtherFinancingSourcesUses_InceptionOfCapitalLease decimal(19,4),
    @OtherFinancingSourcesUses_GeneralObligationBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_RefundingBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_PremiumOnDebtIssuance decimal(19,4),
    @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent decimal(19,4),
    @OtherFinancingSourcesUses_TransfersIn decimal(19,4),
    @OtherFinancingSourcesUses_TransfersOut decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingSources decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingUses decimal(19,4),
    @SpecialAndExtraordinaryItems_SpecialItem decimal(19,4),
    @SpecialAndExtraordinaryItems_ExtraordinaryItem decimal(19,4),
    @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear decimal(19,4),
    @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_General]
	   SET [Revenues_PropertyTaxes] = @Revenues_PropertyTaxes 
		  ,[Revenues_SalesTaxes] = @Revenues_SalesTaxes 
		  ,[Revenues_Intergovernmental] = @Revenues_Intergovernmental 
		  ,[Revenues_Interest] = @Revenues_Interest 
		  ,[Revenues_LicensesAndPermits] = @Revenues_LicensesAndPermits 
		  ,[Revenues_FinesAndForfeitures] = @Revenues_FinesAndForfeitures 
		  ,[Revenues_Rentals] = @Revenues_Rentals 
		  ,[Revenues_ChargesForServices] = @Revenues_ChargesForServices 
		  ,[Revenues_ContributionsAndDonations] = @Revenues_ContributionsAndDonations 
		  ,[Revenues_SpecialAssessments] = @Revenues_SpecialAssessments 
		  ,[Revenues_OtherRevenues] = @Revenues_OtherRevenues 
		  ,[Expenditures_GeneralGovernment_LegislativeAndExecutive] = @Expenditures_GeneralGovernment_LegislativeAndExecutive 
		  ,[Expenditures_GeneralGovernment_Judicial] = @Expenditures_GeneralGovernment_Judicial 
		  ,[Expenditures_PublicSafety] = @Expenditures_PublicSafety 
		  ,[Expenditures_PublicWorks] = @Expenditures_PublicWorks 
		  ,[Expenditures_Health] = @Expenditures_Health 
		  ,[Expenditures_HumanServices] = @Expenditures_HumanServices 
		  ,[Expenditures_ConservationAndRecreation] = @Expenditures_ConservationAndRecreation 
		  ,[Expenditures_CapitalOutlay] = @Expenditures_CapitalOutlay 
		  ,[Expenditures_Intergovernmental] = @Expenditures_Intergovernmental 
		  ,[Expenditures_DebtService_PrincipalRetirement] = @Expenditures_DebtService_PrincipalRetirement 
		  ,[Expenditures_DebtService_InterestAndFiscalCharges] = @Expenditures_DebtService_InterestAndFiscalCharges 
		  ,[Expenditures_DebtService_BondIssuanceCosts] = @Expenditures_DebtService_BondIssuanceCosts 
		  ,[Expenditures_DebtService_Other] = @Expenditures_DebtService_Other 
		  ,[Expenditures_OtherExpenditures] = @Expenditures_OtherExpenditures 
		  ,[OtherFinancingSourcesUses_SaleOfCapitalAssets] = @OtherFinancingSourcesUses_SaleOfCapitalAssets 
		  ,[OtherFinancingSourcesUses_InceptionOfCapitalLease] = @OtherFinancingSourcesUses_InceptionOfCapitalLease 
		  ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued] = @OtherFinancingSourcesUses_GeneralObligationBondsIssued 
		  ,[OtherFinancingSourcesUses_RefundingBondsIssued] = @OtherFinancingSourcesUses_RefundingBondsIssued 
		  ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance] = @OtherFinancingSourcesUses_PremiumOnDebtIssuance 
		  ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent] = @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent 
		  ,[OtherFinancingSourcesUses_TransfersIn] = @OtherFinancingSourcesUses_TransfersIn 
		  ,[OtherFinancingSourcesUses_TransfersOut] = @OtherFinancingSourcesUses_TransfersOut 
		  ,[OtherFinancingSourcesUses_OtherFinancingSources] = @OtherFinancingSourcesUses_OtherFinancingSources 
		  ,[OtherFinancingSourcesUses_OtherFinancingUses] = @OtherFinancingSourcesUses_OtherFinancingUses 
		  ,[SpecialAndExtraordinaryItems_SpecialItem] = @SpecialAndExtraordinaryItems_SpecialItem 
		  ,[SpecialAndExtraordinaryItems_ExtraordinaryItem] = @SpecialAndExtraordinaryItems_ExtraordinaryItem 
		  ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear] = @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear 
		  ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets] = @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets 
		  
	 WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_GeneralID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental](
	[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID] [int] IDENTITY(1,1) NOT NULL
	,[Revenues_PropertyTaxes] decimal(19,4) NULL
	,[Revenues_SalesTaxes] decimal(19,4) NULL
	,[Revenues_Intergovernmental] decimal(19,4) NULL
	,[Revenues_Interest] decimal(19,4) NULL
	,[Revenues_LicensesAndPermits] decimal(19,4) NULL
	,[Revenues_FinesAndForfeitures] decimal(19,4) NULL
	,[Revenues_Rentals] decimal(19,4) NULL
	,[Revenues_ChargesForServices] decimal(19,4) NULL
	,[Revenues_ContributionsAndDonations] decimal(19,4) NULL
	,[Revenues_SpecialAssessments] decimal(19,4) NULL
	,[Revenues_OtherRevenues] decimal(19,4) NULL
	,[Expenditures_GeneralGovernment_LegislativeAndExecutive] decimal(19,4) NULL
	,[Expenditures_GeneralGovernment_Judicial] decimal(19,4) NULL
	,[Expenditures_PublicSafety] decimal(19,4) NULL
	,[Expenditures_PublicWorks] decimal(19,4) NULL
	,[Expenditures_Health] decimal(19,4) NULL
	,[Expenditures_HumanServices] decimal(19,4) NULL
	,[Expenditures_ConservationAndRecreation] decimal(19,4) NULL
	,[Expenditures_CapitalOutlay] decimal(19,4) NULL
	,[Expenditures_Intergovernmental] decimal(19,4) NULL
	,[Expenditures_DebtService_PrincipalRetirement] decimal(19,4) NULL
	,[Expenditures_DebtService_InterestAndFiscalCharges] decimal(19,4) NULL
	,[Expenditures_DebtService_BondIssuanceCosts] decimal(19,4) NULL
	,[Expenditures_DebtService_Other] decimal(19,4) NULL
	,[Expenditures_OtherExpenditures] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_SaleOfCapitalAssets] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_InceptionOfCapitalLease] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_GeneralObligationBondsIssued] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_RefundingBondsIssued] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_PremiumOnDebtIssuance] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_TransfersIn] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_TransfersOut] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_OtherFinancingSources] decimal(19,4) NULL
	,[OtherFinancingSourcesUses_OtherFinancingUses] decimal(19,4) NULL
	,[SpecialAndExtraordinaryItems_SpecialItem] decimal(19,4) NULL
	,[SpecialAndExtraordinaryItems_ExtraordinaryItem] decimal(19,4) NULL
	,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear] decimal(19,4) NULL
	,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental] PRIMARY KEY CLUSTERED 
(
	[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID]
          ,[Revenues_PropertyTaxes]
          ,[Revenues_SalesTaxes]
          ,[Revenues_Intergovernmental]
          ,[Revenues_Interest]
          ,[Revenues_LicensesAndPermits]
          ,[Revenues_FinesAndForfeitures]
          ,[Revenues_Rentals]
          ,[Revenues_ChargesForServices]
          ,[Revenues_ContributionsAndDonations]
          ,[Revenues_SpecialAssessments]
          ,[Revenues_OtherRevenues]
          ,[Expenditures_GeneralGovernment_LegislativeAndExecutive]
          ,[Expenditures_GeneralGovernment_Judicial]
          ,[Expenditures_PublicSafety]
          ,[Expenditures_PublicWorks]
          ,[Expenditures_Health]
          ,[Expenditures_HumanServices]
          ,[Expenditures_ConservationAndRecreation]
          ,[Expenditures_CapitalOutlay]
          ,[Expenditures_Intergovernmental]
          ,[Expenditures_DebtService_PrincipalRetirement]
          ,[Expenditures_DebtService_InterestAndFiscalCharges]
          ,[Expenditures_DebtService_BondIssuanceCosts]
          ,[Expenditures_DebtService_Other]
          ,[Expenditures_OtherExpenditures]
          ,[OtherFinancingSourcesUses_SaleOfCapitalAssets]
          ,[OtherFinancingSourcesUses_InceptionOfCapitalLease]
          ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued]
          ,[OtherFinancingSourcesUses_RefundingBondsIssued]
          ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance]
          ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent]
          ,[OtherFinancingSourcesUses_TransfersIn]
          ,[OtherFinancingSourcesUses_TransfersOut]
          ,[OtherFinancingSourcesUses_OtherFinancingSources]
          ,[OtherFinancingSourcesUses_OtherFinancingUses]
          ,[SpecialAndExtraordinaryItems_SpecialItem]
          ,[SpecialAndExtraordinaryItems_ExtraordinaryItem]
          ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear]
          ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental]
	 WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental]
		  WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalAdd]
	-- Add the parameters for the stored procedure here
	
    @Revenues_PropertyTaxes decimal(19,4),
    @Revenues_SalesTaxes decimal(19,4),
    @Revenues_Intergovernmental decimal(19,4),
    @Revenues_Interest decimal(19,4),
    @Revenues_LicensesAndPermits decimal(19,4),
    @Revenues_FinesAndForfeitures decimal(19,4),
    @Revenues_Rentals decimal(19,4),
    @Revenues_ChargesForServices decimal(19,4),
    @Revenues_ContributionsAndDonations decimal(19,4),
    @Revenues_SpecialAssessments decimal(19,4),
    @Revenues_OtherRevenues decimal(19,4),
    @Expenditures_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenditures_GeneralGovernment_Judicial decimal(19,4),
    @Expenditures_PublicSafety decimal(19,4),
    @Expenditures_PublicWorks decimal(19,4),
    @Expenditures_Health decimal(19,4),
    @Expenditures_HumanServices decimal(19,4),
    @Expenditures_ConservationAndRecreation decimal(19,4),
    @Expenditures_CapitalOutlay decimal(19,4),
    @Expenditures_Intergovernmental decimal(19,4),
    @Expenditures_DebtService_PrincipalRetirement decimal(19,4),
    @Expenditures_DebtService_InterestAndFiscalCharges decimal(19,4),
    @Expenditures_DebtService_BondIssuanceCosts decimal(19,4),
    @Expenditures_DebtService_Other decimal(19,4),
    @Expenditures_OtherExpenditures decimal(19,4),
    @OtherFinancingSourcesUses_SaleOfCapitalAssets decimal(19,4),
    @OtherFinancingSourcesUses_InceptionOfCapitalLease decimal(19,4),
    @OtherFinancingSourcesUses_GeneralObligationBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_RefundingBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_PremiumOnDebtIssuance decimal(19,4),
    @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent decimal(19,4),
    @OtherFinancingSourcesUses_TransfersIn decimal(19,4),
    @OtherFinancingSourcesUses_TransfersOut decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingSources decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingUses decimal(19,4),
    @SpecialAndExtraordinaryItems_SpecialItem decimal(19,4),
    @SpecialAndExtraordinaryItems_ExtraordinaryItem decimal(19,4),
    @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear decimal(19,4),
    @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental]
			   ([Revenues_PropertyTaxes]
			   ,[Revenues_SalesTaxes]
			   ,[Revenues_Intergovernmental]
			   ,[Revenues_Interest]
			   ,[Revenues_LicensesAndPermits]
			   ,[Revenues_FinesAndForfeitures]
			   ,[Revenues_Rentals]
			   ,[Revenues_ChargesForServices]
			   ,[Revenues_ContributionsAndDonations]
			   ,[Revenues_SpecialAssessments]
			   ,[Revenues_OtherRevenues]
			   ,[Expenditures_GeneralGovernment_LegislativeAndExecutive]
			   ,[Expenditures_GeneralGovernment_Judicial]
			   ,[Expenditures_PublicSafety]
			   ,[Expenditures_PublicWorks]
			   ,[Expenditures_Health]
			   ,[Expenditures_HumanServices]
			   ,[Expenditures_ConservationAndRecreation]
			   ,[Expenditures_CapitalOutlay]
			   ,[Expenditures_Intergovernmental]
			   ,[Expenditures_DebtService_PrincipalRetirement]
			   ,[Expenditures_DebtService_InterestAndFiscalCharges]
			   ,[Expenditures_DebtService_BondIssuanceCosts]
			   ,[Expenditures_DebtService_Other]
			   ,[Expenditures_OtherExpenditures]
			   ,[OtherFinancingSourcesUses_SaleOfCapitalAssets]
			   ,[OtherFinancingSourcesUses_InceptionOfCapitalLease]
			   ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued]
			   ,[OtherFinancingSourcesUses_RefundingBondsIssued]
			   ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance]
			   ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent]
			   ,[OtherFinancingSourcesUses_TransfersIn]
			   ,[OtherFinancingSourcesUses_TransfersOut]
			   ,[OtherFinancingSourcesUses_OtherFinancingSources]
			   ,[OtherFinancingSourcesUses_OtherFinancingUses]
			   ,[SpecialAndExtraordinaryItems_SpecialItem]
			   ,[SpecialAndExtraordinaryItems_ExtraordinaryItem]
			   ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear]
			   ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets])
			   
		VALUES (@Revenues_PropertyTaxes,
			   @Revenues_SalesTaxes,
			   @Revenues_Intergovernmental,
			   @Revenues_Interest,
			   @Revenues_LicensesAndPermits,
			   @Revenues_FinesAndForfeitures,
			   @Revenues_Rentals,
			   @Revenues_ChargesForServices,
			   @Revenues_ContributionsAndDonations,
			   @Revenues_SpecialAssessments,
			   @Revenues_OtherRevenues,
			   @Expenditures_GeneralGovernment_LegislativeAndExecutive,
			   @Expenditures_GeneralGovernment_Judicial,
			   @Expenditures_PublicSafety,
			   @Expenditures_PublicWorks,
			   @Expenditures_Health,
			   @Expenditures_HumanServices,
			   @Expenditures_ConservationAndRecreation,
			   @Expenditures_CapitalOutlay,
			   @Expenditures_Intergovernmental,
			   @Expenditures_DebtService_PrincipalRetirement,
			   @Expenditures_DebtService_InterestAndFiscalCharges,
			   @Expenditures_DebtService_BondIssuanceCosts,
			   @Expenditures_DebtService_Other,
			   @Expenditures_OtherExpenditures,
			   @OtherFinancingSourcesUses_SaleOfCapitalAssets,
			   @OtherFinancingSourcesUses_InceptionOfCapitalLease,
			   @OtherFinancingSourcesUses_GeneralObligationBondsIssued,
			   @OtherFinancingSourcesUses_RefundingBondsIssued,
			   @OtherFinancingSourcesUses_PremiumOnDebtIssuance,
			   @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent,
			   @OtherFinancingSourcesUses_TransfersIn,
			   @OtherFinancingSourcesUses_TransfersOut,
			   @OtherFinancingSourcesUses_OtherFinancingSources,
			   @OtherFinancingSourcesUses_OtherFinancingUses,
			   @SpecialAndExtraordinaryItems_SpecialItem,
			   @SpecialAndExtraordinaryItems_ExtraordinaryItem,
			   @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear,
			   @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID int,
    @Revenues_PropertyTaxes decimal(19,4),
    @Revenues_SalesTaxes decimal(19,4),
    @Revenues_Intergovernmental decimal(19,4),
    @Revenues_Interest decimal(19,4),
    @Revenues_LicensesAndPermits decimal(19,4),
    @Revenues_FinesAndForfeitures decimal(19,4),
    @Revenues_Rentals decimal(19,4),
    @Revenues_ChargesForServices decimal(19,4),
    @Revenues_ContributionsAndDonations decimal(19,4),
    @Revenues_SpecialAssessments decimal(19,4),
    @Revenues_OtherRevenues decimal(19,4),
    @Expenditures_GeneralGovernment_LegislativeAndExecutive decimal(19,4),
    @Expenditures_GeneralGovernment_Judicial decimal(19,4),
    @Expenditures_PublicSafety decimal(19,4),
    @Expenditures_PublicWorks decimal(19,4),
    @Expenditures_Health decimal(19,4),
    @Expenditures_HumanServices decimal(19,4),
    @Expenditures_ConservationAndRecreation decimal(19,4),
    @Expenditures_CapitalOutlay decimal(19,4),
    @Expenditures_Intergovernmental decimal(19,4),
    @Expenditures_DebtService_PrincipalRetirement decimal(19,4),
    @Expenditures_DebtService_InterestAndFiscalCharges decimal(19,4),
    @Expenditures_DebtService_BondIssuanceCosts decimal(19,4),
    @Expenditures_DebtService_Other decimal(19,4),
    @Expenditures_OtherExpenditures decimal(19,4),
    @OtherFinancingSourcesUses_SaleOfCapitalAssets decimal(19,4),
    @OtherFinancingSourcesUses_InceptionOfCapitalLease decimal(19,4),
    @OtherFinancingSourcesUses_GeneralObligationBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_RefundingBondsIssued decimal(19,4),
    @OtherFinancingSourcesUses_PremiumOnDebtIssuance decimal(19,4),
    @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent decimal(19,4),
    @OtherFinancingSourcesUses_TransfersIn decimal(19,4),
    @OtherFinancingSourcesUses_TransfersOut decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingSources decimal(19,4),
    @OtherFinancingSourcesUses_OtherFinancingUses decimal(19,4),
    @SpecialAndExtraordinaryItems_SpecialItem decimal(19,4),
    @SpecialAndExtraordinaryItems_ExtraordinaryItem decimal(19,4),
    @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear decimal(19,4),
    @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmental]
	   SET [Revenues_PropertyTaxes] = @Revenues_PropertyTaxes 
		  ,[Revenues_SalesTaxes] = @Revenues_SalesTaxes 
		  ,[Revenues_Intergovernmental] = @Revenues_Intergovernmental 
		  ,[Revenues_Interest] = @Revenues_Interest 
		  ,[Revenues_LicensesAndPermits] = @Revenues_LicensesAndPermits 
		  ,[Revenues_FinesAndForfeitures] = @Revenues_FinesAndForfeitures 
		  ,[Revenues_Rentals] = @Revenues_Rentals 
		  ,[Revenues_ChargesForServices] = @Revenues_ChargesForServices 
		  ,[Revenues_ContributionsAndDonations] = @Revenues_ContributionsAndDonations 
		  ,[Revenues_SpecialAssessments] = @Revenues_SpecialAssessments 
		  ,[Revenues_OtherRevenues] = @Revenues_OtherRevenues 
		  ,[Expenditures_GeneralGovernment_LegislativeAndExecutive] = @Expenditures_GeneralGovernment_LegislativeAndExecutive 
		  ,[Expenditures_GeneralGovernment_Judicial] = @Expenditures_GeneralGovernment_Judicial 
		  ,[Expenditures_PublicSafety] = @Expenditures_PublicSafety 
		  ,[Expenditures_PublicWorks] = @Expenditures_PublicWorks 
		  ,[Expenditures_Health] = @Expenditures_Health 
		  ,[Expenditures_HumanServices] = @Expenditures_HumanServices 
		  ,[Expenditures_ConservationAndRecreation] = @Expenditures_ConservationAndRecreation 
		  ,[Expenditures_CapitalOutlay] = @Expenditures_CapitalOutlay 
		  ,[Expenditures_Intergovernmental] = @Expenditures_Intergovernmental 
		  ,[Expenditures_DebtService_PrincipalRetirement] = @Expenditures_DebtService_PrincipalRetirement 
		  ,[Expenditures_DebtService_InterestAndFiscalCharges] = @Expenditures_DebtService_InterestAndFiscalCharges 
		  ,[Expenditures_DebtService_BondIssuanceCosts] = @Expenditures_DebtService_BondIssuanceCosts 
		  ,[Expenditures_DebtService_Other] = @Expenditures_DebtService_Other 
		  ,[Expenditures_OtherExpenditures] = @Expenditures_OtherExpenditures 
		  ,[OtherFinancingSourcesUses_SaleOfCapitalAssets] = @OtherFinancingSourcesUses_SaleOfCapitalAssets 
		  ,[OtherFinancingSourcesUses_InceptionOfCapitalLease] = @OtherFinancingSourcesUses_InceptionOfCapitalLease 
		  ,[OtherFinancingSourcesUses_GeneralObligationBondsIssued] = @OtherFinancingSourcesUses_GeneralObligationBondsIssued 
		  ,[OtherFinancingSourcesUses_RefundingBondsIssued] = @OtherFinancingSourcesUses_RefundingBondsIssued 
		  ,[OtherFinancingSourcesUses_PremiumOnDebtIssuance] = @OtherFinancingSourcesUses_PremiumOnDebtIssuance 
		  ,[OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent] = @OtherFinancingSourcesUses_PaymentToRefundedBondEscrowAgent 
		  ,[OtherFinancingSourcesUses_TransfersIn] = @OtherFinancingSourcesUses_TransfersIn 
		  ,[OtherFinancingSourcesUses_TransfersOut] = @OtherFinancingSourcesUses_TransfersOut 
		  ,[OtherFinancingSourcesUses_OtherFinancingSources] = @OtherFinancingSourcesUses_OtherFinancingSources 
		  ,[OtherFinancingSourcesUses_OtherFinancingUses] = @OtherFinancingSourcesUses_OtherFinancingUses 
		  ,[SpecialAndExtraordinaryItems_SpecialItem] = @SpecialAndExtraordinaryItems_SpecialItem 
		  ,[SpecialAndExtraordinaryItems_ExtraordinaryItem] = @SpecialAndExtraordinaryItems_ExtraordinaryItem 
		  ,[FundBalancesBeginningOfYear_FundBalancesBeginningOfYear] = @FundBalancesBeginningOfYear_FundBalancesBeginningOfYear 
		  ,[IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets] = @IncreaseDecreaseInInventoryOrPrepaidAssets_IncreaseDecreaseInInventoryOrPrepaidAssets 
		  
	 WHERE [StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID] = @StatementOfRevenuesExpendituresAndChangesInFundBalances_GovernmentalFunds_TotalGovernmentalID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater](
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CurrentAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_CurrentAssets_Investments] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Accounts] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Intergovernmental] decimal(19,4) NULL
	,[Assets_CurrentAssets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_CurrentAssets_PrepaidItems] decimal(19,4) NULL
	,[Assets_CurrentAssets_InterfundReceivable] decimal(19,4) NULL
	,[Assets_CurrentAssets_OtherCurrentAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_Investment] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_OtherNoncurrentAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccruedWages] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_DueToOtherFunds] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] decimal(19,4) NULL
	,[Liabilities_TotalDeferredInflowsOfResources] decimal(19,4) NULL
	,[NetPosition_NetInvestmentInCapitalAssets] decimal(19,4) NULL
	,[NetPosition_Restricted] decimal(19,4) NULL
	,[NetPosition_Unrestricted] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater] PRIMARY KEY CLUSTERED 
(
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID]
          ,[Assets_CurrentAssets_CashAndCashEquivalents]
          ,[Assets_CurrentAssets_Investments]
          ,[Assets_CurrentAssets_Receivables_Accounts]
          ,[Assets_CurrentAssets_Receivables_Intergovernmental]
          ,[Assets_CurrentAssets_InventoryHeldForResale]
          ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
          ,[Assets_CurrentAssets_PrepaidItems]
          ,[Assets_CurrentAssets_InterfundReceivable]
          ,[Assets_CurrentAssets_OtherCurrentAssets]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
          ,[Assets_NoncurrentAsset_Investment]
          ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
          ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_CurrentLiabilities_AccountsPayable]
          ,[Liabilities_CurrentLiabilities_AccruedWages]
          ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
          ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
          ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
          ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
          ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
          ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
          ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
          ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
          ,[Liabilities_CurrentLiabilities_ClaimsPayable]
          ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
          ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
          ,[Liabilities_TotalDeferredInflowsOfResources]
          ,[NetPosition_NetInvestmentInCapitalAssets]
          ,[NetPosition_Restricted]
          ,[NetPosition_Unrestricted]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater]
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater]
		  WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater]
			   ([Assets_CurrentAssets_CashAndCashEquivalents]
			   ,[Assets_CurrentAssets_Investments]
			   ,[Assets_CurrentAssets_Receivables_Accounts]
			   ,[Assets_CurrentAssets_Receivables_Intergovernmental]
			   ,[Assets_CurrentAssets_InventoryHeldForResale]
			   ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
			   ,[Assets_CurrentAssets_PrepaidItems]
			   ,[Assets_CurrentAssets_InterfundReceivable]
			   ,[Assets_CurrentAssets_OtherCurrentAssets]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
			   ,[Assets_NoncurrentAsset_Investment]
			   ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
			   ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_CurrentLiabilities_AccountsPayable]
			   ,[Liabilities_CurrentLiabilities_AccruedWages]
			   ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
			   ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
			   ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
			   ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
			   ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
			   ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
			   ,[Liabilities_CurrentLiabilities_ClaimsPayable]
			   ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
			   ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
			   ,[Liabilities_TotalDeferredInflowsOfResources]
			   ,[NetPosition_NetInvestmentInCapitalAssets]
			   ,[NetPosition_Restricted]
			   ,[NetPosition_Unrestricted])
			   
		VALUES (@Assets_CurrentAssets_CashAndCashEquivalents,
			   @Assets_CurrentAssets_Investments,
			   @Assets_CurrentAssets_Receivables_Accounts,
			   @Assets_CurrentAssets_Receivables_Intergovernmental,
			   @Assets_CurrentAssets_InventoryHeldForResale,
			   @Assets_CurrentAssets_MaterialsAndSuppliesInventory,
			   @Assets_CurrentAssets_PrepaidItems,
			   @Assets_CurrentAssets_InterfundReceivable,
			   @Assets_CurrentAssets_OtherCurrentAssets,
			   @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents,
			   @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits,
			   @Assets_NoncurrentAsset_Investment,
			   @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_LessAccumulatedDepreciation,
			   @Assets_NoncurrentAsset_OtherNoncurrentAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_CurrentLiabilities_AccountsPayable,
			   @Liabilities_CurrentLiabilities_AccruedWages,
			   @Liabilities_CurrentLiabilities_IntergovernmentalPayable,
			   @Liabilities_CurrentLiabilities_DueToOtherFunds,
			   @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable,
			   @Liabilities_CurrentLiabilities_MaturedBondsPayable,
			   @Liabilities_CurrentLiabilities_MaturedInterestPayable,
			   @Liabilities_CurrentLiabilities_UnearnedRevenue,
			   @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable,
			   @Liabilities_CurrentLiabilities_CapitalLeasesPayable,
			   @Liabilities_CurrentLiabilities_ClaimsPayable,
			   @Liabilities_CurrentLiabilities_OtherCurrentLiabilities,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable,
			   @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_OtherLongTermLiabilities,
			   @Liabilities_TotalDeferredInflowsOfResources,
			   @NetPosition_NetInvestmentInCapitalAssets,
			   @NetPosition_Restricted,
			   @NetPosition_Unrestricted)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int,
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater]
	   SET [Assets_CurrentAssets_CashAndCashEquivalents] = @Assets_CurrentAssets_CashAndCashEquivalents 
		  ,[Assets_CurrentAssets_Investments] = @Assets_CurrentAssets_Investments 
		  ,[Assets_CurrentAssets_Receivables_Accounts] = @Assets_CurrentAssets_Receivables_Accounts 
		  ,[Assets_CurrentAssets_Receivables_Intergovernmental] = @Assets_CurrentAssets_Receivables_Intergovernmental 
		  ,[Assets_CurrentAssets_InventoryHeldForResale] = @Assets_CurrentAssets_InventoryHeldForResale 
		  ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] = @Assets_CurrentAssets_MaterialsAndSuppliesInventory 
		  ,[Assets_CurrentAssets_PrepaidItems] = @Assets_CurrentAssets_PrepaidItems 
		  ,[Assets_CurrentAssets_InterfundReceivable] = @Assets_CurrentAssets_InterfundReceivable 
		  ,[Assets_CurrentAssets_OtherCurrentAssets] = @Assets_CurrentAssets_OtherCurrentAssets 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] = @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] = @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits 
		  ,[Assets_NoncurrentAsset_Investment] = @Assets_NoncurrentAsset_Investment 
		  ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] = @Assets_NoncurrentAsset_LessAccumulatedDepreciation 
		  ,[Assets_NoncurrentAsset_OtherNoncurrentAssets] = @Assets_NoncurrentAsset_OtherNoncurrentAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_CurrentLiabilities_AccountsPayable] = @Liabilities_CurrentLiabilities_AccountsPayable 
		  ,[Liabilities_CurrentLiabilities_AccruedWages] = @Liabilities_CurrentLiabilities_AccruedWages 
		  ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] = @Liabilities_CurrentLiabilities_IntergovernmentalPayable 
		  ,[Liabilities_CurrentLiabilities_DueToOtherFunds] = @Liabilities_CurrentLiabilities_DueToOtherFunds 
		  ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] = @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedBondsPayable] = @Liabilities_CurrentLiabilities_MaturedBondsPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedInterestPayable] = @Liabilities_CurrentLiabilities_MaturedInterestPayable 
		  ,[Liabilities_CurrentLiabilities_UnearnedRevenue] = @Liabilities_CurrentLiabilities_UnearnedRevenue 
		  ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] = @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable 
		  ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] = @Liabilities_CurrentLiabilities_CapitalLeasesPayable 
		  ,[Liabilities_CurrentLiabilities_ClaimsPayable] = @Liabilities_CurrentLiabilities_ClaimsPayable 
		  ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] = @Liabilities_CurrentLiabilities_OtherCurrentLiabilities 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable 
		  ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] = @Liabilities_LongTermLiabilities_OtherLongTermLiabilities 
		  ,[Liabilities_TotalDeferredInflowsOfResources] = @Liabilities_TotalDeferredInflowsOfResources 
		  ,[NetPosition_NetInvestmentInCapitalAssets] = @NetPosition_NetInvestmentInCapitalAssets 
		  ,[NetPosition_Restricted] = @NetPosition_Restricted 
		  ,[NetPosition_Unrestricted] = @NetPosition_Unrestricted 
		  
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer](
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CurrentAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_CurrentAssets_Investments] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Accounts] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Intergovernmental] decimal(19,4) NULL
	,[Assets_CurrentAssets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_CurrentAssets_PrepaidItems] decimal(19,4) NULL
	,[Assets_CurrentAssets_InterfundReceivable] decimal(19,4) NULL
	,[Assets_CurrentAssets_OtherCurrentAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_Investment] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_OtherNoncurrentAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccruedWages] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_DueToOtherFunds] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] decimal(19,4) NULL
	,[Liabilities_TotalDeferredInflowsOfResources] decimal(19,4) NULL
	,[NetPosition_NetInvestmentInCapitalAssets] decimal(19,4) NULL
	,[NetPosition_Restricted] decimal(19,4) NULL
	,[NetPosition_Unrestricted] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer] PRIMARY KEY CLUSTERED 
(
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID]
          ,[Assets_CurrentAssets_CashAndCashEquivalents]
          ,[Assets_CurrentAssets_Investments]
          ,[Assets_CurrentAssets_Receivables_Accounts]
          ,[Assets_CurrentAssets_Receivables_Intergovernmental]
          ,[Assets_CurrentAssets_InventoryHeldForResale]
          ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
          ,[Assets_CurrentAssets_PrepaidItems]
          ,[Assets_CurrentAssets_InterfundReceivable]
          ,[Assets_CurrentAssets_OtherCurrentAssets]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
          ,[Assets_NoncurrentAsset_Investment]
          ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
          ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_CurrentLiabilities_AccountsPayable]
          ,[Liabilities_CurrentLiabilities_AccruedWages]
          ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
          ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
          ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
          ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
          ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
          ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
          ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
          ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
          ,[Liabilities_CurrentLiabilities_ClaimsPayable]
          ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
          ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
          ,[Liabilities_TotalDeferredInflowsOfResources]
          ,[NetPosition_NetInvestmentInCapitalAssets]
          ,[NetPosition_Restricted]
          ,[NetPosition_Unrestricted]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
		  WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
			   ([Assets_CurrentAssets_CashAndCashEquivalents]
			   ,[Assets_CurrentAssets_Investments]
			   ,[Assets_CurrentAssets_Receivables_Accounts]
			   ,[Assets_CurrentAssets_Receivables_Intergovernmental]
			   ,[Assets_CurrentAssets_InventoryHeldForResale]
			   ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
			   ,[Assets_CurrentAssets_PrepaidItems]
			   ,[Assets_CurrentAssets_InterfundReceivable]
			   ,[Assets_CurrentAssets_OtherCurrentAssets]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
			   ,[Assets_NoncurrentAsset_Investment]
			   ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
			   ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_CurrentLiabilities_AccountsPayable]
			   ,[Liabilities_CurrentLiabilities_AccruedWages]
			   ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
			   ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
			   ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
			   ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
			   ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
			   ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
			   ,[Liabilities_CurrentLiabilities_ClaimsPayable]
			   ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
			   ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
			   ,[Liabilities_TotalDeferredInflowsOfResources]
			   ,[NetPosition_NetInvestmentInCapitalAssets]
			   ,[NetPosition_Restricted]
			   ,[NetPosition_Unrestricted])
			   
		VALUES (@Assets_CurrentAssets_CashAndCashEquivalents,
			   @Assets_CurrentAssets_Investments,
			   @Assets_CurrentAssets_Receivables_Accounts,
			   @Assets_CurrentAssets_Receivables_Intergovernmental,
			   @Assets_CurrentAssets_InventoryHeldForResale,
			   @Assets_CurrentAssets_MaterialsAndSuppliesInventory,
			   @Assets_CurrentAssets_PrepaidItems,
			   @Assets_CurrentAssets_InterfundReceivable,
			   @Assets_CurrentAssets_OtherCurrentAssets,
			   @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents,
			   @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits,
			   @Assets_NoncurrentAsset_Investment,
			   @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_LessAccumulatedDepreciation,
			   @Assets_NoncurrentAsset_OtherNoncurrentAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_CurrentLiabilities_AccountsPayable,
			   @Liabilities_CurrentLiabilities_AccruedWages,
			   @Liabilities_CurrentLiabilities_IntergovernmentalPayable,
			   @Liabilities_CurrentLiabilities_DueToOtherFunds,
			   @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable,
			   @Liabilities_CurrentLiabilities_MaturedBondsPayable,
			   @Liabilities_CurrentLiabilities_MaturedInterestPayable,
			   @Liabilities_CurrentLiabilities_UnearnedRevenue,
			   @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable,
			   @Liabilities_CurrentLiabilities_CapitalLeasesPayable,
			   @Liabilities_CurrentLiabilities_ClaimsPayable,
			   @Liabilities_CurrentLiabilities_OtherCurrentLiabilities,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable,
			   @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_OtherLongTermLiabilities,
			   @Liabilities_TotalDeferredInflowsOfResources,
			   @NetPosition_NetInvestmentInCapitalAssets,
			   @NetPosition_Restricted,
			   @NetPosition_Unrestricted)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int,
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
	   SET [Assets_CurrentAssets_CashAndCashEquivalents] = @Assets_CurrentAssets_CashAndCashEquivalents 
		  ,[Assets_CurrentAssets_Investments] = @Assets_CurrentAssets_Investments 
		  ,[Assets_CurrentAssets_Receivables_Accounts] = @Assets_CurrentAssets_Receivables_Accounts 
		  ,[Assets_CurrentAssets_Receivables_Intergovernmental] = @Assets_CurrentAssets_Receivables_Intergovernmental 
		  ,[Assets_CurrentAssets_InventoryHeldForResale] = @Assets_CurrentAssets_InventoryHeldForResale 
		  ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] = @Assets_CurrentAssets_MaterialsAndSuppliesInventory 
		  ,[Assets_CurrentAssets_PrepaidItems] = @Assets_CurrentAssets_PrepaidItems 
		  ,[Assets_CurrentAssets_InterfundReceivable] = @Assets_CurrentAssets_InterfundReceivable 
		  ,[Assets_CurrentAssets_OtherCurrentAssets] = @Assets_CurrentAssets_OtherCurrentAssets 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] = @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] = @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits 
		  ,[Assets_NoncurrentAsset_Investment] = @Assets_NoncurrentAsset_Investment 
		  ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] = @Assets_NoncurrentAsset_LessAccumulatedDepreciation 
		  ,[Assets_NoncurrentAsset_OtherNoncurrentAssets] = @Assets_NoncurrentAsset_OtherNoncurrentAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_CurrentLiabilities_AccountsPayable] = @Liabilities_CurrentLiabilities_AccountsPayable 
		  ,[Liabilities_CurrentLiabilities_AccruedWages] = @Liabilities_CurrentLiabilities_AccruedWages 
		  ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] = @Liabilities_CurrentLiabilities_IntergovernmentalPayable 
		  ,[Liabilities_CurrentLiabilities_DueToOtherFunds] = @Liabilities_CurrentLiabilities_DueToOtherFunds 
		  ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] = @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedBondsPayable] = @Liabilities_CurrentLiabilities_MaturedBondsPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedInterestPayable] = @Liabilities_CurrentLiabilities_MaturedInterestPayable 
		  ,[Liabilities_CurrentLiabilities_UnearnedRevenue] = @Liabilities_CurrentLiabilities_UnearnedRevenue 
		  ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] = @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable 
		  ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] = @Liabilities_CurrentLiabilities_CapitalLeasesPayable 
		  ,[Liabilities_CurrentLiabilities_ClaimsPayable] = @Liabilities_CurrentLiabilities_ClaimsPayable 
		  ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] = @Liabilities_CurrentLiabilities_OtherCurrentLiabilities 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable 
		  ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] = @Liabilities_LongTermLiabilities_OtherLongTermLiabilities 
		  ,[Liabilities_TotalDeferredInflowsOfResources] = @Liabilities_TotalDeferredInflowsOfResources 
		  ,[NetPosition_NetInvestmentInCapitalAssets] = @NetPosition_NetInvestmentInCapitalAssets 
		  ,[NetPosition_Restricted] = @NetPosition_Restricted 
		  ,[NetPosition_Unrestricted] = @NetPosition_Unrestricted 
		  
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill](
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID] [int] IDENTITY(1,1) NOT NULL
	,[Assets_CurrentAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_CurrentAssets_Investments] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Accounts] decimal(19,4) NULL
	,[Assets_CurrentAssets_Receivables_Intergovernmental] decimal(19,4) NULL
	,[Assets_CurrentAssets_InventoryHeldForResale] decimal(19,4) NULL
	,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] decimal(19,4) NULL
	,[Assets_CurrentAssets_PrepaidItems] decimal(19,4) NULL
	,[Assets_CurrentAssets_InterfundReceivable] decimal(19,4) NULL
	,[Assets_CurrentAssets_OtherCurrentAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_Investment] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_OtherNoncurrentAssets] decimal(19,4) NULL
	,[Assets_TotalDeferredOutflowsOfResources] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccountsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_AccruedWages] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_DueToOtherFunds] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_MaturedInterestPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_UnearnedRevenue] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_ClaimsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] decimal(19,4) NULL
	,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] decimal(19,4) NULL
	,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] decimal(19,4) NULL
	,[Liabilities_TotalDeferredInflowsOfResources] decimal(19,4) NULL
	,[NetPosition_NetInvestmentInCapitalAssets] decimal(19,4) NULL
	,[NetPosition_Restricted] decimal(19,4) NULL
	,[NetPosition_Unrestricted] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill] PRIMARY KEY CLUSTERED 
(
	[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID]
          ,[Assets_CurrentAssets_CashAndCashEquivalents]
          ,[Assets_CurrentAssets_Investments]
          ,[Assets_CurrentAssets_Receivables_Accounts]
          ,[Assets_CurrentAssets_Receivables_Intergovernmental]
          ,[Assets_CurrentAssets_InventoryHeldForResale]
          ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
          ,[Assets_CurrentAssets_PrepaidItems]
          ,[Assets_CurrentAssets_InterfundReceivable]
          ,[Assets_CurrentAssets_OtherCurrentAssets]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
          ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
          ,[Assets_NoncurrentAsset_Investment]
          ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
          ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
          ,[Assets_TotalDeferredOutflowsOfResources]
          ,[Liabilities_CurrentLiabilities_AccountsPayable]
          ,[Liabilities_CurrentLiabilities_AccruedWages]
          ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
          ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
          ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
          ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
          ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
          ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
          ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
          ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
          ,[Liabilities_CurrentLiabilities_ClaimsPayable]
          ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
          ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
          ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
          ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
          ,[Liabilities_TotalDeferredInflowsOfResources]
          ,[NetPosition_NetInvestmentInCapitalAssets]
          ,[NetPosition_Restricted]
          ,[NetPosition_Unrestricted]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill]
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill]
		  WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillAdd]
	-- Add the parameters for the stored procedure here
	
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill]
			   ([Assets_CurrentAssets_CashAndCashEquivalents]
			   ,[Assets_CurrentAssets_Investments]
			   ,[Assets_CurrentAssets_Receivables_Accounts]
			   ,[Assets_CurrentAssets_Receivables_Intergovernmental]
			   ,[Assets_CurrentAssets_InventoryHeldForResale]
			   ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory]
			   ,[Assets_CurrentAssets_PrepaidItems]
			   ,[Assets_CurrentAssets_InterfundReceivable]
			   ,[Assets_CurrentAssets_OtherCurrentAssets]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents]
			   ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits]
			   ,[Assets_NoncurrentAsset_Investment]
			   ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation]
			   ,[Assets_NoncurrentAsset_OtherNoncurrentAssets]
			   ,[Assets_TotalDeferredOutflowsOfResources]
			   ,[Liabilities_CurrentLiabilities_AccountsPayable]
			   ,[Liabilities_CurrentLiabilities_AccruedWages]
			   ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable]
			   ,[Liabilities_CurrentLiabilities_DueToOtherFunds]
			   ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedBondsPayable]
			   ,[Liabilities_CurrentLiabilities_MaturedInterestPayable]
			   ,[Liabilities_CurrentLiabilities_UnearnedRevenue]
			   ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable]
			   ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable]
			   ,[Liabilities_CurrentLiabilities_ClaimsPayable]
			   ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable]
			   ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable]
			   ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion]
			   ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities]
			   ,[Liabilities_TotalDeferredInflowsOfResources]
			   ,[NetPosition_NetInvestmentInCapitalAssets]
			   ,[NetPosition_Restricted]
			   ,[NetPosition_Unrestricted])
			   
		VALUES (@Assets_CurrentAssets_CashAndCashEquivalents,
			   @Assets_CurrentAssets_Investments,
			   @Assets_CurrentAssets_Receivables_Accounts,
			   @Assets_CurrentAssets_Receivables_Intergovernmental,
			   @Assets_CurrentAssets_InventoryHeldForResale,
			   @Assets_CurrentAssets_MaterialsAndSuppliesInventory,
			   @Assets_CurrentAssets_PrepaidItems,
			   @Assets_CurrentAssets_InterfundReceivable,
			   @Assets_CurrentAssets_OtherCurrentAssets,
			   @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents,
			   @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits,
			   @Assets_NoncurrentAsset_Investment,
			   @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_LessAccumulatedDepreciation,
			   @Assets_NoncurrentAsset_OtherNoncurrentAssets,
			   @Assets_TotalDeferredOutflowsOfResources,
			   @Liabilities_CurrentLiabilities_AccountsPayable,
			   @Liabilities_CurrentLiabilities_AccruedWages,
			   @Liabilities_CurrentLiabilities_IntergovernmentalPayable,
			   @Liabilities_CurrentLiabilities_DueToOtherFunds,
			   @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable,
			   @Liabilities_CurrentLiabilities_MaturedBondsPayable,
			   @Liabilities_CurrentLiabilities_MaturedInterestPayable,
			   @Liabilities_CurrentLiabilities_UnearnedRevenue,
			   @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable,
			   @Liabilities_CurrentLiabilities_CapitalLeasesPayable,
			   @Liabilities_CurrentLiabilities_ClaimsPayable,
			   @Liabilities_CurrentLiabilities_OtherCurrentLiabilities,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable,
			   @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable,
			   @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion,
			   @Liabilities_LongTermLiabilities_OtherLongTermLiabilities,
			   @Liabilities_TotalDeferredInflowsOfResources,
			   @NetPosition_NetInvestmentInCapitalAssets,
			   @NetPosition_Restricted,
			   @NetPosition_Unrestricted)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID int,
    @Assets_CurrentAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_CurrentAssets_Investments decimal(19,4),
    @Assets_CurrentAssets_Receivables_Accounts decimal(19,4),
    @Assets_CurrentAssets_Receivables_Intergovernmental decimal(19,4),
    @Assets_CurrentAssets_InventoryHeldForResale decimal(19,4),
    @Assets_CurrentAssets_MaterialsAndSuppliesInventory decimal(19,4),
    @Assets_CurrentAssets_PrepaidItems decimal(19,4),
    @Assets_CurrentAssets_InterfundReceivable decimal(19,4),
    @Assets_CurrentAssets_OtherCurrentAssets decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents decimal(19,4),
    @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits decimal(19,4),
    @Assets_NoncurrentAsset_Investment decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_LessAccumulatedDepreciation decimal(19,4),
    @Assets_NoncurrentAsset_OtherNoncurrentAssets decimal(19,4),
    @Assets_TotalDeferredOutflowsOfResources decimal(19,4),
    @Liabilities_CurrentLiabilities_AccountsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_AccruedWages decimal(19,4),
    @Liabilities_CurrentLiabilities_IntergovernmentalPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_DueToOtherFunds decimal(19,4),
    @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_MaturedInterestPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_UnearnedRevenue decimal(19,4),
    @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_CapitalLeasesPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_ClaimsPayable decimal(19,4),
    @Liabilities_CurrentLiabilities_OtherCurrentLiabilities decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable decimal(19,4),
    @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable decimal(19,4),
    @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion decimal(19,4),
    @Liabilities_LongTermLiabilities_OtherLongTermLiabilities decimal(19,4),
    @Liabilities_TotalDeferredInflowsOfResources decimal(19,4),
    @NetPosition_NetInvestmentInCapitalAssets decimal(19,4),
    @NetPosition_Restricted decimal(19,4),
    @NetPosition_Unrestricted decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfill]
	   SET [Assets_CurrentAssets_CashAndCashEquivalents] = @Assets_CurrentAssets_CashAndCashEquivalents 
		  ,[Assets_CurrentAssets_Investments] = @Assets_CurrentAssets_Investments 
		  ,[Assets_CurrentAssets_Receivables_Accounts] = @Assets_CurrentAssets_Receivables_Accounts 
		  ,[Assets_CurrentAssets_Receivables_Intergovernmental] = @Assets_CurrentAssets_Receivables_Intergovernmental 
		  ,[Assets_CurrentAssets_InventoryHeldForResale] = @Assets_CurrentAssets_InventoryHeldForResale 
		  ,[Assets_CurrentAssets_MaterialsAndSuppliesInventory] = @Assets_CurrentAssets_MaterialsAndSuppliesInventory 
		  ,[Assets_CurrentAssets_PrepaidItems] = @Assets_CurrentAssets_PrepaidItems 
		  ,[Assets_CurrentAssets_InterfundReceivable] = @Assets_CurrentAssets_InterfundReceivable 
		  ,[Assets_CurrentAssets_OtherCurrentAssets] = @Assets_CurrentAssets_OtherCurrentAssets 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents] = @Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents 
		  ,[Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits] = @Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits 
		  ,[Assets_NoncurrentAsset_Investment] = @Assets_NoncurrentAsset_Investment 
		  ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_LessAccumulatedDepreciation] = @Assets_NoncurrentAsset_LessAccumulatedDepreciation 
		  ,[Assets_NoncurrentAsset_OtherNoncurrentAssets] = @Assets_NoncurrentAsset_OtherNoncurrentAssets 
		  ,[Assets_TotalDeferredOutflowsOfResources] = @Assets_TotalDeferredOutflowsOfResources 
		  ,[Liabilities_CurrentLiabilities_AccountsPayable] = @Liabilities_CurrentLiabilities_AccountsPayable 
		  ,[Liabilities_CurrentLiabilities_AccruedWages] = @Liabilities_CurrentLiabilities_AccruedWages 
		  ,[Liabilities_CurrentLiabilities_IntergovernmentalPayable] = @Liabilities_CurrentLiabilities_IntergovernmentalPayable 
		  ,[Liabilities_CurrentLiabilities_DueToOtherFunds] = @Liabilities_CurrentLiabilities_DueToOtherFunds 
		  ,[Liabilities_CurrentLiabilities_CompensatedAbsencesPayable] = @Liabilities_CurrentLiabilities_CompensatedAbsencesPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedBondsPayable] = @Liabilities_CurrentLiabilities_MaturedBondsPayable 
		  ,[Liabilities_CurrentLiabilities_MaturedInterestPayable] = @Liabilities_CurrentLiabilities_MaturedInterestPayable 
		  ,[Liabilities_CurrentLiabilities_UnearnedRevenue] = @Liabilities_CurrentLiabilities_UnearnedRevenue 
		  ,[Liabilities_CurrentLiabilities_GeneralObligationBondsPayable] = @Liabilities_CurrentLiabilities_GeneralObligationBondsPayable 
		  ,[Liabilities_CurrentLiabilities_CapitalLeasesPayable] = @Liabilities_CurrentLiabilities_CapitalLeasesPayable 
		  ,[Liabilities_CurrentLiabilities_ClaimsPayable] = @Liabilities_CurrentLiabilities_ClaimsPayable 
		  ,[Liabilities_CurrentLiabilities_OtherCurrentLiabilities] = @Liabilities_CurrentLiabilities_OtherCurrentLiabilities 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable 
		  ,[Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable] = @Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable 
		  ,[Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion] = @Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion 
		  ,[Liabilities_LongTermLiabilities_OtherLongTermLiabilities] = @Liabilities_LongTermLiabilities_OtherLongTermLiabilities 
		  ,[Liabilities_TotalDeferredInflowsOfResources] = @Liabilities_TotalDeferredInflowsOfResources 
		  ,[NetPosition_NetInvestmentInCapitalAssets] = @NetPosition_NetInvestmentInCapitalAssets 
		  ,[NetPosition_Restricted] = @NetPosition_Restricted 
		  ,[NetPosition_Unrestricted] = @NetPosition_Unrestricted 
		  
	 WHERE [StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID] = @StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsLandfillID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater](
	[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] [int] IDENTITY(1,1) NOT NULL
	,[OperatingRevenues_Sales] decimal(19,4) NULL
	,[OperatingRevenues_ChargesForServices] decimal(19,4) NULL
	,[OperatingRevenues_Miscellaneous] decimal(19,4) NULL
	,[OperatingRevenues_OtherOperatingRevenues] decimal(19,4) NULL
	,[OperatingExpenses_Salaries] decimal(19,4) NULL
	,[OperatingExpenses_FringeBenefits] decimal(19,4) NULL
	,[OperatingExpenses_PurchasedServices] decimal(19,4) NULL
	,[OperatingExpenses_MaterialsAndSupplies] decimal(19,4) NULL
	,[OperatingExpenses_CostOfSales] decimal(19,4) NULL
	,[OperatingExpenses_Depreciation] decimal(19,4) NULL
	,[OperatingExpenses_Claims] decimal(19,4) NULL
	,[OperatingExpenses_CapitalOutlay] decimal(19,4) NULL
	,[OperatingExpenses_OtherOperatingExpenses] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_Interest] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OperatingGrants] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses] decimal(19,4) NULL
	,[CapitalContributions] decimal(19,4) NULL
	,[SpecialItems] decimal(19,4) NULL
	,[ExtraordinaryItems] decimal(19,4) NULL
	,[TransfersIn] decimal(19,4) NULL
	,[TransfersOut] decimal(19,4) NULL
	,[NetPositionBeginningOfYear] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater] PRIMARY KEY CLUSTERED 
(
	[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID]
          ,[OperatingRevenues_Sales]
          ,[OperatingRevenues_ChargesForServices]
          ,[OperatingRevenues_Miscellaneous]
          ,[OperatingRevenues_OtherOperatingRevenues]
          ,[OperatingExpenses_Salaries]
          ,[OperatingExpenses_FringeBenefits]
          ,[OperatingExpenses_PurchasedServices]
          ,[OperatingExpenses_MaterialsAndSupplies]
          ,[OperatingExpenses_CostOfSales]
          ,[OperatingExpenses_Depreciation]
          ,[OperatingExpenses_Claims]
          ,[OperatingExpenses_CapitalOutlay]
          ,[OperatingExpenses_OtherOperatingExpenses]
          ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges]
          ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets]
          ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets]
          ,[NonOperatingRevenuesExpenses_Interest]
          ,[NonOperatingRevenuesExpenses_OperatingGrants]
          ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues]
          ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses]
          ,[CapitalContributions]
          ,[SpecialItems]
          ,[ExtraordinaryItems]
          ,[TransfersIn]
          ,[TransfersOut]
          ,[NetPositionBeginningOfYear]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater]
	 WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater]
		  WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterAdd]
	-- Add the parameters for the stored procedure here
	
    @OperatingRevenues_Sales decimal(19,4),
    @OperatingRevenues_ChargesForServices decimal(19,4),
    @OperatingRevenues_Miscellaneous decimal(19,4),
    @OperatingRevenues_OtherOperatingRevenues decimal(19,4),
    @OperatingExpenses_Salaries decimal(19,4),
    @OperatingExpenses_FringeBenefits decimal(19,4),
    @OperatingExpenses_PurchasedServices decimal(19,4),
    @OperatingExpenses_MaterialsAndSupplies decimal(19,4),
    @OperatingExpenses_CostOfSales decimal(19,4),
    @OperatingExpenses_Depreciation decimal(19,4),
    @OperatingExpenses_Claims decimal(19,4),
    @OperatingExpenses_CapitalOutlay decimal(19,4),
    @OperatingExpenses_OtherOperatingExpenses decimal(19,4),
    @NonOperatingRevenuesExpenses_InterestAndFiscalCharges decimal(19,4),
    @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_Interest decimal(19,4),
    @NonOperatingRevenuesExpenses_OperatingGrants decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses decimal(19,4),
    @CapitalContributions decimal(19,4),
    @SpecialItems decimal(19,4),
    @ExtraordinaryItems decimal(19,4),
    @TransfersIn decimal(19,4),
    @TransfersOut decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater]
			   ([OperatingRevenues_Sales]
			   ,[OperatingRevenues_ChargesForServices]
			   ,[OperatingRevenues_Miscellaneous]
			   ,[OperatingRevenues_OtherOperatingRevenues]
			   ,[OperatingExpenses_Salaries]
			   ,[OperatingExpenses_FringeBenefits]
			   ,[OperatingExpenses_PurchasedServices]
			   ,[OperatingExpenses_MaterialsAndSupplies]
			   ,[OperatingExpenses_CostOfSales]
			   ,[OperatingExpenses_Depreciation]
			   ,[OperatingExpenses_Claims]
			   ,[OperatingExpenses_CapitalOutlay]
			   ,[OperatingExpenses_OtherOperatingExpenses]
			   ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges]
			   ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets]
			   ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets]
			   ,[NonOperatingRevenuesExpenses_Interest]
			   ,[NonOperatingRevenuesExpenses_OperatingGrants]
			   ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues]
			   ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses]
			   ,[CapitalContributions]
			   ,[SpecialItems]
			   ,[ExtraordinaryItems]
			   ,[TransfersIn]
			   ,[TransfersOut]
			   ,[NetPositionBeginningOfYear])
			   
		VALUES (@OperatingRevenues_Sales,
			   @OperatingRevenues_ChargesForServices,
			   @OperatingRevenues_Miscellaneous,
			   @OperatingRevenues_OtherOperatingRevenues,
			   @OperatingExpenses_Salaries,
			   @OperatingExpenses_FringeBenefits,
			   @OperatingExpenses_PurchasedServices,
			   @OperatingExpenses_MaterialsAndSupplies,
			   @OperatingExpenses_CostOfSales,
			   @OperatingExpenses_Depreciation,
			   @OperatingExpenses_Claims,
			   @OperatingExpenses_CapitalOutlay,
			   @OperatingExpenses_OtherOperatingExpenses,
			   @NonOperatingRevenuesExpenses_InterestAndFiscalCharges,
			   @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets,
			   @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets,
			   @NonOperatingRevenuesExpenses_Interest,
			   @NonOperatingRevenuesExpenses_OperatingGrants,
			   @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues,
			   @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses,
			   @CapitalContributions,
			   @SpecialItems,
			   @ExtraordinaryItems,
			   @TransfersIn,
			   @TransfersOut,
			   @NetPositionBeginningOfYear)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID int,
    @OperatingRevenues_Sales decimal(19,4),
    @OperatingRevenues_ChargesForServices decimal(19,4),
    @OperatingRevenues_Miscellaneous decimal(19,4),
    @OperatingRevenues_OtherOperatingRevenues decimal(19,4),
    @OperatingExpenses_Salaries decimal(19,4),
    @OperatingExpenses_FringeBenefits decimal(19,4),
    @OperatingExpenses_PurchasedServices decimal(19,4),
    @OperatingExpenses_MaterialsAndSupplies decimal(19,4),
    @OperatingExpenses_CostOfSales decimal(19,4),
    @OperatingExpenses_Depreciation decimal(19,4),
    @OperatingExpenses_Claims decimal(19,4),
    @OperatingExpenses_CapitalOutlay decimal(19,4),
    @OperatingExpenses_OtherOperatingExpenses decimal(19,4),
    @NonOperatingRevenuesExpenses_InterestAndFiscalCharges decimal(19,4),
    @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_Interest decimal(19,4),
    @NonOperatingRevenuesExpenses_OperatingGrants decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses decimal(19,4),
    @CapitalContributions decimal(19,4),
    @SpecialItems decimal(19,4),
    @ExtraordinaryItems decimal(19,4),
    @TransfersIn decimal(19,4),
    @TransfersOut decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWater]
	   SET [OperatingRevenues_Sales] = @OperatingRevenues_Sales 
		  ,[OperatingRevenues_ChargesForServices] = @OperatingRevenues_ChargesForServices 
		  ,[OperatingRevenues_Miscellaneous] = @OperatingRevenues_Miscellaneous 
		  ,[OperatingRevenues_OtherOperatingRevenues] = @OperatingRevenues_OtherOperatingRevenues 
		  ,[OperatingExpenses_Salaries] = @OperatingExpenses_Salaries 
		  ,[OperatingExpenses_FringeBenefits] = @OperatingExpenses_FringeBenefits 
		  ,[OperatingExpenses_PurchasedServices] = @OperatingExpenses_PurchasedServices 
		  ,[OperatingExpenses_MaterialsAndSupplies] = @OperatingExpenses_MaterialsAndSupplies 
		  ,[OperatingExpenses_CostOfSales] = @OperatingExpenses_CostOfSales 
		  ,[OperatingExpenses_Depreciation] = @OperatingExpenses_Depreciation 
		  ,[OperatingExpenses_Claims] = @OperatingExpenses_Claims 
		  ,[OperatingExpenses_CapitalOutlay] = @OperatingExpenses_CapitalOutlay 
		  ,[OperatingExpenses_OtherOperatingExpenses] = @OperatingExpenses_OtherOperatingExpenses 
		  ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges] = @NonOperatingRevenuesExpenses_InterestAndFiscalCharges 
		  ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets] = @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets 
		  ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets] = @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets 
		  ,[NonOperatingRevenuesExpenses_Interest] = @NonOperatingRevenuesExpenses_Interest 
		  ,[NonOperatingRevenuesExpenses_OperatingGrants] = @NonOperatingRevenuesExpenses_OperatingGrants 
		  ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues] = @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues 
		  ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses] = @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses 
		  ,[CapitalContributions] = @CapitalContributions 
		  ,[SpecialItems] = @SpecialItems 
		  ,[ExtraordinaryItems] = @ExtraordinaryItems 
		  ,[TransfersIn] = @TransfersIn 
		  ,[TransfersOut] = @TransfersOut 
		  ,[NetPositionBeginningOfYear] = @NetPositionBeginningOfYear 
		  
	 WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsWaterID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
USE [OnlineFinancialStatements]
GO
/****** Object:  Table [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer]    Script Date: 11/26/2012 13:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer](
	[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] [int] IDENTITY(1,1) NOT NULL
	,[OperatingRevenues_Sales] decimal(19,4) NULL
	,[OperatingRevenues_ChargesForServices] decimal(19,4) NULL
	,[OperatingRevenues_Miscellaneous] decimal(19,4) NULL
	,[OperatingRevenues_OtherOperatingRevenues] decimal(19,4) NULL
	,[OperatingExpenses_Salaries] decimal(19,4) NULL
	,[OperatingExpenses_FringeBenefits] decimal(19,4) NULL
	,[OperatingExpenses_PurchasedServices] decimal(19,4) NULL
	,[OperatingExpenses_MaterialsAndSupplies] decimal(19,4) NULL
	,[OperatingExpenses_CostOfSales] decimal(19,4) NULL
	,[OperatingExpenses_Depreciation] decimal(19,4) NULL
	,[OperatingExpenses_Claims] decimal(19,4) NULL
	,[OperatingExpenses_CapitalOutlay] decimal(19,4) NULL
	,[OperatingExpenses_OtherOperatingExpenses] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_Interest] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OperatingGrants] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues] decimal(19,4) NULL
	,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses] decimal(19,4) NULL
	,[CapitalContributions] decimal(19,4) NULL
	,[SpecialItems] decimal(19,4) NULL
	,[ExtraordinaryItems] decimal(19,4) NULL
	,[TransfersIn] decimal(19,4) NULL
	,[TransfersOut] decimal(19,4) NULL
	,[NetPositionBeginningOfYear] decimal(19,4) NULL
 CONSTRAINT [PK_County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer] PRIMARY KEY CLUSTERED 
(
	[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 60) ON [PRIMARY]
) ON [PRIMARY]
GO






/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    SELECT [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID]
          ,[OperatingRevenues_Sales]
          ,[OperatingRevenues_ChargesForServices]
          ,[OperatingRevenues_Miscellaneous]
          ,[OperatingRevenues_OtherOperatingRevenues]
          ,[OperatingExpenses_Salaries]
          ,[OperatingExpenses_FringeBenefits]
          ,[OperatingExpenses_PurchasedServices]
          ,[OperatingExpenses_MaterialsAndSupplies]
          ,[OperatingExpenses_CostOfSales]
          ,[OperatingExpenses_Depreciation]
          ,[OperatingExpenses_Claims]
          ,[OperatingExpenses_CapitalOutlay]
          ,[OperatingExpenses_OtherOperatingExpenses]
          ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges]
          ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets]
          ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets]
          ,[NonOperatingRevenuesExpenses_Interest]
          ,[NonOperatingRevenuesExpenses_OperatingGrants]
          ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues]
          ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses]
          ,[CapitalContributions]
          ,[SpecialItems]
          ,[ExtraordinaryItems]
          ,[TransfersIn]
          ,[TransfersOut]
          ,[NetPositionBeginningOfYear]
	  FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
	 WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
		  
END
GO


/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    DELETE FROM [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
		  WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
		  
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd]
	-- Add the parameters for the stored procedure here
	
    @OperatingRevenues_Sales decimal(19,4),
    @OperatingRevenues_ChargesForServices decimal(19,4),
    @OperatingRevenues_Miscellaneous decimal(19,4),
    @OperatingRevenues_OtherOperatingRevenues decimal(19,4),
    @OperatingExpenses_Salaries decimal(19,4),
    @OperatingExpenses_FringeBenefits decimal(19,4),
    @OperatingExpenses_PurchasedServices decimal(19,4),
    @OperatingExpenses_MaterialsAndSupplies decimal(19,4),
    @OperatingExpenses_CostOfSales decimal(19,4),
    @OperatingExpenses_Depreciation decimal(19,4),
    @OperatingExpenses_Claims decimal(19,4),
    @OperatingExpenses_CapitalOutlay decimal(19,4),
    @OperatingExpenses_OtherOperatingExpenses decimal(19,4),
    @NonOperatingRevenuesExpenses_InterestAndFiscalCharges decimal(19,4),
    @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_Interest decimal(19,4),
    @NonOperatingRevenuesExpenses_OperatingGrants decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses decimal(19,4),
    @CapitalContributions decimal(19,4),
    @SpecialItems decimal(19,4),
    @ExtraordinaryItems decimal(19,4),
    @TransfersIn decimal(19,4),
    @TransfersOut decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    INSERT INTO [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
			   ([OperatingRevenues_Sales]
			   ,[OperatingRevenues_ChargesForServices]
			   ,[OperatingRevenues_Miscellaneous]
			   ,[OperatingRevenues_OtherOperatingRevenues]
			   ,[OperatingExpenses_Salaries]
			   ,[OperatingExpenses_FringeBenefits]
			   ,[OperatingExpenses_PurchasedServices]
			   ,[OperatingExpenses_MaterialsAndSupplies]
			   ,[OperatingExpenses_CostOfSales]
			   ,[OperatingExpenses_Depreciation]
			   ,[OperatingExpenses_Claims]
			   ,[OperatingExpenses_CapitalOutlay]
			   ,[OperatingExpenses_OtherOperatingExpenses]
			   ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges]
			   ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets]
			   ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets]
			   ,[NonOperatingRevenuesExpenses_Interest]
			   ,[NonOperatingRevenuesExpenses_OperatingGrants]
			   ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues]
			   ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses]
			   ,[CapitalContributions]
			   ,[SpecialItems]
			   ,[ExtraordinaryItems]
			   ,[TransfersIn]
			   ,[TransfersOut]
			   ,[NetPositionBeginningOfYear])
			   
		VALUES (@OperatingRevenues_Sales,
			   @OperatingRevenues_ChargesForServices,
			   @OperatingRevenues_Miscellaneous,
			   @OperatingRevenues_OtherOperatingRevenues,
			   @OperatingExpenses_Salaries,
			   @OperatingExpenses_FringeBenefits,
			   @OperatingExpenses_PurchasedServices,
			   @OperatingExpenses_MaterialsAndSupplies,
			   @OperatingExpenses_CostOfSales,
			   @OperatingExpenses_Depreciation,
			   @OperatingExpenses_Claims,
			   @OperatingExpenses_CapitalOutlay,
			   @OperatingExpenses_OtherOperatingExpenses,
			   @NonOperatingRevenuesExpenses_InterestAndFiscalCharges,
			   @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets,
			   @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets,
			   @NonOperatingRevenuesExpenses_Interest,
			   @NonOperatingRevenuesExpenses_OperatingGrants,
			   @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues,
			   @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses,
			   @CapitalContributions,
			   @SpecialItems,
			   @ExtraordinaryItems,
			   @TransfersIn,
			   @TransfersOut,
			   @NetPositionBeginningOfYear)
			   
	
	SELECT SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate]    Script Date: 11/26/2012 13:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Bryan J Schoeff
-- Create date: 10.06.2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[County_GAAP_StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate]
	-- Add the parameters for the stored procedure here
    @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID int,
    @OperatingRevenues_Sales decimal(19,4),
    @OperatingRevenues_ChargesForServices decimal(19,4),
    @OperatingRevenues_Miscellaneous decimal(19,4),
    @OperatingRevenues_OtherOperatingRevenues decimal(19,4),
    @OperatingExpenses_Salaries decimal(19,4),
    @OperatingExpenses_FringeBenefits decimal(19,4),
    @OperatingExpenses_PurchasedServices decimal(19,4),
    @OperatingExpenses_MaterialsAndSupplies decimal(19,4),
    @OperatingExpenses_CostOfSales decimal(19,4),
    @OperatingExpenses_Depreciation decimal(19,4),
    @OperatingExpenses_Claims decimal(19,4),
    @OperatingExpenses_CapitalOutlay decimal(19,4),
    @OperatingExpenses_OtherOperatingExpenses decimal(19,4),
    @NonOperatingRevenuesExpenses_InterestAndFiscalCharges decimal(19,4),
    @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets decimal(19,4),
    @NonOperatingRevenuesExpenses_Interest decimal(19,4),
    @NonOperatingRevenuesExpenses_OperatingGrants decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues decimal(19,4),
    @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses decimal(19,4),
    @CapitalContributions decimal(19,4),
    @SpecialItems decimal(19,4),
    @ExtraordinaryItems decimal(19,4),
    @TransfersIn decimal(19,4),
    @TransfersOut decimal(19,4),
    @NetPositionBeginningOfYear decimal(19,4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   
    UPDATE [OnlineFinancialStatements].[dbo].[StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewer]
	   SET [OperatingRevenues_Sales] = @OperatingRevenues_Sales 
		  ,[OperatingRevenues_ChargesForServices] = @OperatingRevenues_ChargesForServices 
		  ,[OperatingRevenues_Miscellaneous] = @OperatingRevenues_Miscellaneous 
		  ,[OperatingRevenues_OtherOperatingRevenues] = @OperatingRevenues_OtherOperatingRevenues 
		  ,[OperatingExpenses_Salaries] = @OperatingExpenses_Salaries 
		  ,[OperatingExpenses_FringeBenefits] = @OperatingExpenses_FringeBenefits 
		  ,[OperatingExpenses_PurchasedServices] = @OperatingExpenses_PurchasedServices 
		  ,[OperatingExpenses_MaterialsAndSupplies] = @OperatingExpenses_MaterialsAndSupplies 
		  ,[OperatingExpenses_CostOfSales] = @OperatingExpenses_CostOfSales 
		  ,[OperatingExpenses_Depreciation] = @OperatingExpenses_Depreciation 
		  ,[OperatingExpenses_Claims] = @OperatingExpenses_Claims 
		  ,[OperatingExpenses_CapitalOutlay] = @OperatingExpenses_CapitalOutlay 
		  ,[OperatingExpenses_OtherOperatingExpenses] = @OperatingExpenses_OtherOperatingExpenses 
		  ,[NonOperatingRevenuesExpenses_InterestAndFiscalCharges] = @NonOperatingRevenuesExpenses_InterestAndFiscalCharges 
		  ,[NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets] = @NonOperatingRevenuesExpenses_GainOnSaleOfCapitalAssets 
		  ,[NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets] = @NonOperatingRevenuesExpenses_LossOnSaleOfCapitalAssets 
		  ,[NonOperatingRevenuesExpenses_Interest] = @NonOperatingRevenuesExpenses_Interest 
		  ,[NonOperatingRevenuesExpenses_OperatingGrants] = @NonOperatingRevenuesExpenses_OperatingGrants 
		  ,[NonOperatingRevenuesExpenses_OtherNonOperatingRevenues] = @NonOperatingRevenuesExpenses_OtherNonOperatingRevenues 
		  ,[NonOperatingRevenuesExpenses_OtherNonOperatingExpenses] = @NonOperatingRevenuesExpenses_OtherNonOperatingExpenses 
		  ,[CapitalContributions] = @CapitalContributions 
		  ,[SpecialItems] = @SpecialItems 
		  ,[ExtraordinaryItems] = @ExtraordinaryItems 
		  ,[TransfersIn] = @TransfersIn 
		  ,[TransfersOut] = @TransfersOut 
		  ,[NetPositionBeginningOfYear] = @NetPositionBeginningOfYear 
		  
	 WHERE [StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID] = @StatementOfRevenuesExpensesAndChangesInNetPosition_ProprietaryFunds_EnterpriseFundsSewerID
	
END
GO


/****** Object:  Default [DF_SharedServices_DateEntered]    Script Date: 11/26/2012 13:45:39 ******/
--ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
--GO
