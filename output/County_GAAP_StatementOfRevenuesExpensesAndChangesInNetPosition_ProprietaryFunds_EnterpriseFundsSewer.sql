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
ALTER TABLE [dbo].OnlineFinancialStatements ADD  CONSTRAINT [DF_SharedServices_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
