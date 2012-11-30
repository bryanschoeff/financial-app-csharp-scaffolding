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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
