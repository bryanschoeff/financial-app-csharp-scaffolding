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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
