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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
