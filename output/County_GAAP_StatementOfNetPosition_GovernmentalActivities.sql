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
	,[Assets_Less:AccumulatedDepreciaion] decimal(19,4) NULL
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
          ,[Assets_Less:AccumulatedDepreciaion]
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
    @Assets_Less:AccumulatedDepreciaion decimal(19,4),
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
			   ,[Assets_Less:AccumulatedDepreciaion]
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
			   @Assets_Less:AccumulatedDepreciaion,
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
    @Assets_Less:AccumulatedDepreciaion decimal(19,4),
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
		  ,[Assets_Less:AccumulatedDepreciaion] = @Assets_Less:AccumulatedDepreciaion 
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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
