namespace County.GAAP
{
  public class StatementOfNetPosition_GovernmentalActivities
  {
    int id { get; set; }
    
    decimal Assets_CashAndCashEquivalents { get; set; }
    decimal Assets_Investments { get; set; }
    decimal Assets_InventoryHeldForResale { get; set; }
    decimal Assets_MaterialsAndSuppliesInventory { get; set; }
    decimal Assets_AccruedInterestReceivable { get; set; }
    decimal Assets_AccountsReceivable { get; set; }
    decimal Assets_InternalBalances { get; set; }
    decimal Assets_IntergovernmentalReceivable { get; set; }
    decimal Assets_PrepaidItems { get; set; }
    decimal Assets_PropertyTaxesReceivable { get; set; }
    decimal Assets_SpecialAssessmentsReceivable { get; set; }
    decimal Assets_SalesTaxReceivable { get; set; }
    decimal Assets_RevenueInLieuOfTaxesReceivable { get; set; }
    decimal Assets_DueFromOtherGovernments { get; set; }
    decimal Assets_NotesReceivable { get; set; }
    decimal Assets_LoansReceivable { get; set; }
    decimal Assets_InvestmentInJointVenture { get; set; }
    decimal Assets_RestrictedAssets { get; set; }
    decimal Assets_AdvancesToOtherFunds { get; set; }
    decimal Assets_NondepreciableCapitalAssets { get; set; }
    decimal Assets_DepreciableCapitalAssets { get; set; }
    decimal Assets_Less:AccumulatedDepreciaion { get; set; }
    decimal Assets_OtherAssets { get; set; }
    decimal Assets_TotalDeferredOutflowsOfResources { get; set; }
    decimal Liabilities_AccountsPayable { get; set; }
    decimal Liabilities_AccruedWagesAndBenefits { get; set; }
    decimal Liabilities_ContractsPayable { get; set; }
    decimal Liabilities_IntergovernmentalPayable { get; set; }
    decimal Liabilities_DueToOtherGovernments { get; set; }
    decimal Liabilities_MaturedCompensatedAbsences { get; set; }
    decimal Liabilities_MaturedInterestPayable { get; set; }
    decimal Liabilities_MaturedBondsPayable { get; set; }
    decimal Liabilities_AccruedInterestPayable { get; set; }
    decimal Liabilities_RetainagePayable { get; set; }
    decimal Liabilities_ClaimsPayable { get; set; }
    decimal Liabilities_UnearnedRevenue { get; set; }
    decimal Liabilities_NotesPayable { get; set; }
    decimal Liabilities_LongTermLiabilities_DueWithinOneYear { get; set; }
    decimal Liabilities_LongTermLiabilities_DueInMoreThanOneYear { get; set; }
    decimal Liabilities_OtherLiabilities { get; set; }
    decimal NetPosition_NetInvestmentInCapitalAssets { get; set; }
    decimal NetPosition_Restricted { get; set; }
    decimal NetPosition_UnrestrictedDeficit { get; set; }

    public StatementOfNetPosition_GovernmentalActivities()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Assets_CashAndCashEquivalents = reader["Assets_CashAndCashEquivalents"];
        this.Assets_Investments = reader["Assets_Investments"];
        this.Assets_InventoryHeldForResale = reader["Assets_InventoryHeldForResale"];
        this.Assets_MaterialsAndSuppliesInventory = reader["Assets_MaterialsAndSuppliesInventory"];
        this.Assets_AccruedInterestReceivable = reader["Assets_AccruedInterestReceivable"];
        this.Assets_AccountsReceivable = reader["Assets_AccountsReceivable"];
        this.Assets_InternalBalances = reader["Assets_InternalBalances"];
        this.Assets_IntergovernmentalReceivable = reader["Assets_IntergovernmentalReceivable"];
        this.Assets_PrepaidItems = reader["Assets_PrepaidItems"];
        this.Assets_PropertyTaxesReceivable = reader["Assets_PropertyTaxesReceivable"];
        this.Assets_SpecialAssessmentsReceivable = reader["Assets_SpecialAssessmentsReceivable"];
        this.Assets_SalesTaxReceivable = reader["Assets_SalesTaxReceivable"];
        this.Assets_RevenueInLieuOfTaxesReceivable = reader["Assets_RevenueInLieuOfTaxesReceivable"];
        this.Assets_DueFromOtherGovernments = reader["Assets_DueFromOtherGovernments"];
        this.Assets_NotesReceivable = reader["Assets_NotesReceivable"];
        this.Assets_LoansReceivable = reader["Assets_LoansReceivable"];
        this.Assets_InvestmentInJointVenture = reader["Assets_InvestmentInJointVenture"];
        this.Assets_RestrictedAssets = reader["Assets_RestrictedAssets"];
        this.Assets_AdvancesToOtherFunds = reader["Assets_AdvancesToOtherFunds"];
        this.Assets_NondepreciableCapitalAssets = reader["Assets_NondepreciableCapitalAssets"];
        this.Assets_DepreciableCapitalAssets = reader["Assets_DepreciableCapitalAssets"];
        this.Assets_Less:AccumulatedDepreciaion = reader["Assets_Less:AccumulatedDepreciaion"];
        this.Assets_OtherAssets = reader["Assets_OtherAssets"];
        this.Assets_TotalDeferredOutflowsOfResources = reader["Assets_TotalDeferredOutflowsOfResources"];
        this.Liabilities_AccountsPayable = reader["Liabilities_AccountsPayable"];
        this.Liabilities_AccruedWagesAndBenefits = reader["Liabilities_AccruedWagesAndBenefits"];
        this.Liabilities_ContractsPayable = reader["Liabilities_ContractsPayable"];
        this.Liabilities_IntergovernmentalPayable = reader["Liabilities_IntergovernmentalPayable"];
        this.Liabilities_DueToOtherGovernments = reader["Liabilities_DueToOtherGovernments"];
        this.Liabilities_MaturedCompensatedAbsences = reader["Liabilities_MaturedCompensatedAbsences"];
        this.Liabilities_MaturedInterestPayable = reader["Liabilities_MaturedInterestPayable"];
        this.Liabilities_MaturedBondsPayable = reader["Liabilities_MaturedBondsPayable"];
        this.Liabilities_AccruedInterestPayable = reader["Liabilities_AccruedInterestPayable"];
        this.Liabilities_RetainagePayable = reader["Liabilities_RetainagePayable"];
        this.Liabilities_ClaimsPayable = reader["Liabilities_ClaimsPayable"];
        this.Liabilities_UnearnedRevenue = reader["Liabilities_UnearnedRevenue"];
        this.Liabilities_NotesPayable = reader["Liabilities_NotesPayable"];
        this.Liabilities_LongTermLiabilities_DueWithinOneYear = reader["Liabilities_LongTermLiabilities_DueWithinOneYear"];
        this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear = reader["Liabilities_LongTermLiabilities_DueInMoreThanOneYear"];
        this.Liabilities_OtherLiabilities = reader["Liabilities_OtherLiabilities"];
        this.NetPosition_NetInvestmentInCapitalAssets = reader["NetPosition_NetInvestmentInCapitalAssets"];
        this.NetPosition_Restricted = reader["NetPosition_Restricted"];
        this.NetPosition_UnrestrictedDeficit = reader["NetPosition_UnrestrictedDeficit"];
      
        connection.Close();
      }
    }

    public void Save()
    {
      if (this.id == -1)
      {
        SaveNew();
      }
      else
      {
        Update();
      }
    }

    protected void SaveNew()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesAdd", connection);
        
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InternalBalances", this.Assets_InternalBalances);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SpecialAssessmentsReceivable", this.Assets_SpecialAssessmentsReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_InvestmentInJointVenture", this.Assets_InvestmentInJointVenture);
        command.Parameters.AddWithValue("@Assets_RestrictedAssets", this.Assets_RestrictedAssets);
        command.Parameters.AddWithValue("@Assets_AdvancesToOtherFunds", this.Assets_AdvancesToOtherFunds);
        command.Parameters.AddWithValue("@Assets_NondepreciableCapitalAssets", this.Assets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_DepreciableCapitalAssets", this.Assets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_Less:AccumulatedDepreciaion", this.Assets_Less:AccumulatedDepreciaion);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedCompensatedAbsences", this.Liabilities_MaturedCompensatedAbsences);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedInterestPayable", this.Liabilities_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueWithinOneYear", this.Liabilities_LongTermLiabilities_DueWithinOneYear);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueInMoreThanOneYear", this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_UnrestrictedDeficit", this.NetPosition_UnrestrictedDeficit);

        connection.Open();
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", this.id);
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InternalBalances", this.Assets_InternalBalances);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SpecialAssessmentsReceivable", this.Assets_SpecialAssessmentsReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_InvestmentInJointVenture", this.Assets_InvestmentInJointVenture);
        command.Parameters.AddWithValue("@Assets_RestrictedAssets", this.Assets_RestrictedAssets);
        command.Parameters.AddWithValue("@Assets_AdvancesToOtherFunds", this.Assets_AdvancesToOtherFunds);
        command.Parameters.AddWithValue("@Assets_NondepreciableCapitalAssets", this.Assets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_DepreciableCapitalAssets", this.Assets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_Less:AccumulatedDepreciaion", this.Assets_Less:AccumulatedDepreciaion);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedCompensatedAbsences", this.Liabilities_MaturedCompensatedAbsences);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedInterestPayable", this.Liabilities_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueWithinOneYear", this.Liabilities_LongTermLiabilities_DueWithinOneYear);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_DueInMoreThanOneYear", this.Liabilities_LongTermLiabilities_DueInMoreThanOneYear);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_UnrestrictedDeficit", this.NetPosition_UnrestrictedDeficit);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_GovernmentalActivitiesDelete", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_GovernmentalActivitiesId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
