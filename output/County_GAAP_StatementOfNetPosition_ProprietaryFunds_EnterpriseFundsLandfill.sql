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
	,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] decimal(19,4) NULL
	,[Assets_NoncurrentAsset_Less:AccumulatedDepreciation] decimal(19,4) NULL
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
          ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:]
          ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
          ,[Assets_NoncurrentAsset_Less:AccumulatedDepreciation]
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
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets: decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_Less:AccumulatedDepreciation decimal(19,4),
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
			   ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:]
			   ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets]
			   ,[Assets_NoncurrentAsset_Less:AccumulatedDepreciation]
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
			   @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:,
			   @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets,
			   @Assets_NoncurrentAsset_Less:AccumulatedDepreciation,
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
    @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets: decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets decimal(19,4),
    @Assets_NoncurrentAsset_Less:AccumulatedDepreciation decimal(19,4),
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
		  ,[Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:] = @Assets_NoncurrentAsset_CapitalAssets_CapitalAssets: 
		  ,[Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets] = @Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets 
		  ,[Assets_NoncurrentAsset_Less:AccumulatedDepreciation] = @Assets_NoncurrentAsset_Less:AccumulatedDepreciation 
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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
