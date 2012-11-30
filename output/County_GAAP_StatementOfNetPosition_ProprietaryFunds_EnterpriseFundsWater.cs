namespace County.GAAP
{
  public class StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater
  {
    int id { get; set; }
    
    decimal Assets_CurrentAssets_CashAndCashEquivalents { get; set; }
    decimal Assets_CurrentAssets_Investments { get; set; }
    decimal Assets_CurrentAssets_Receivables_Accounts { get; set; }
    decimal Assets_CurrentAssets_Receivables_Intergovernmental { get; set; }
    decimal Assets_CurrentAssets_InventoryHeldForResale { get; set; }
    decimal Assets_CurrentAssets_MaterialsAndSuppliesInventory { get; set; }
    decimal Assets_CurrentAssets_PrepaidItems { get; set; }
    decimal Assets_CurrentAssets_InterfundReceivable { get; set; }
    decimal Assets_CurrentAssets_OtherCurrentAssets { get; set; }
    decimal Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents { get; set; }
    decimal Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits { get; set; }
    decimal Assets_NoncurrentAsset_Investment { get; set; }
    decimal Assets_NoncurrentAsset_CapitalAssets_CapitalAssets: { get; set; }
    decimal Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets { get; set; }
    decimal Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets { get; set; }
    decimal Assets_NoncurrentAsset_Less:AccumulatedDepreciation { get; set; }
    decimal Assets_NoncurrentAsset_OtherNoncurrentAssets { get; set; }
    decimal Assets_TotalDeferredOutflowsOfResources { get; set; }
    decimal Liabilities_CurrentLiabilities_AccountsPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_AccruedWages { get; set; }
    decimal Liabilities_CurrentLiabilities_IntergovernmentalPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_DueToOtherFunds { get; set; }
    decimal Liabilities_CurrentLiabilities_CompensatedAbsencesPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_MaturedBondsPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_MaturedInterestPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_UnearnedRevenue { get; set; }
    decimal Liabilities_CurrentLiabilities_GeneralObligationBondsPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_CapitalLeasesPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_ClaimsPayable { get; set; }
    decimal Liabilities_CurrentLiabilities_OtherCurrentLiabilities { get; set; }
    decimal Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable { get; set; }
    decimal Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable { get; set; }
    decimal Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion { get; set; }
    decimal Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion { get; set; }
    decimal Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion { get; set; }
    decimal Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion { get; set; }
    decimal Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion { get; set; }
    decimal Liabilities_LongTermLiabilities_OtherLongTermLiabilities { get; set; }
    decimal Liabilities_TotalDeferredInflowsOfResources { get; set; }
    decimal NetPosition_NetInvestmentInCapitalAssets { get; set; }
    decimal NetPosition_Restricted { get; set; }
    decimal NetPosition_Unrestricted { get; set; }

    public StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWater()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Assets_CurrentAssets_CashAndCashEquivalents = reader["Assets_CurrentAssets_CashAndCashEquivalents"];
        this.Assets_CurrentAssets_Investments = reader["Assets_CurrentAssets_Investments"];
        this.Assets_CurrentAssets_Receivables_Accounts = reader["Assets_CurrentAssets_Receivables_Accounts"];
        this.Assets_CurrentAssets_Receivables_Intergovernmental = reader["Assets_CurrentAssets_Receivables_Intergovernmental"];
        this.Assets_CurrentAssets_InventoryHeldForResale = reader["Assets_CurrentAssets_InventoryHeldForResale"];
        this.Assets_CurrentAssets_MaterialsAndSuppliesInventory = reader["Assets_CurrentAssets_MaterialsAndSuppliesInventory"];
        this.Assets_CurrentAssets_PrepaidItems = reader["Assets_CurrentAssets_PrepaidItems"];
        this.Assets_CurrentAssets_InterfundReceivable = reader["Assets_CurrentAssets_InterfundReceivable"];
        this.Assets_CurrentAssets_OtherCurrentAssets = reader["Assets_CurrentAssets_OtherCurrentAssets"];
        this.Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents = reader["Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents"];
        this.Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits = reader["Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits"];
        this.Assets_NoncurrentAsset_Investment = reader["Assets_NoncurrentAsset_Investment"];
        this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets: = reader["Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:"];
        this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets = reader["Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets"];
        this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets = reader["Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets"];
        this.Assets_NoncurrentAsset_Less:AccumulatedDepreciation = reader["Assets_NoncurrentAsset_Less:AccumulatedDepreciation"];
        this.Assets_NoncurrentAsset_OtherNoncurrentAssets = reader["Assets_NoncurrentAsset_OtherNoncurrentAssets"];
        this.Assets_TotalDeferredOutflowsOfResources = reader["Assets_TotalDeferredOutflowsOfResources"];
        this.Liabilities_CurrentLiabilities_AccountsPayable = reader["Liabilities_CurrentLiabilities_AccountsPayable"];
        this.Liabilities_CurrentLiabilities_AccruedWages = reader["Liabilities_CurrentLiabilities_AccruedWages"];
        this.Liabilities_CurrentLiabilities_IntergovernmentalPayable = reader["Liabilities_CurrentLiabilities_IntergovernmentalPayable"];
        this.Liabilities_CurrentLiabilities_DueToOtherFunds = reader["Liabilities_CurrentLiabilities_DueToOtherFunds"];
        this.Liabilities_CurrentLiabilities_CompensatedAbsencesPayable = reader["Liabilities_CurrentLiabilities_CompensatedAbsencesPayable"];
        this.Liabilities_CurrentLiabilities_MaturedBondsPayable = reader["Liabilities_CurrentLiabilities_MaturedBondsPayable"];
        this.Liabilities_CurrentLiabilities_MaturedInterestPayable = reader["Liabilities_CurrentLiabilities_MaturedInterestPayable"];
        this.Liabilities_CurrentLiabilities_UnearnedRevenue = reader["Liabilities_CurrentLiabilities_UnearnedRevenue"];
        this.Liabilities_CurrentLiabilities_GeneralObligationBondsPayable = reader["Liabilities_CurrentLiabilities_GeneralObligationBondsPayable"];
        this.Liabilities_CurrentLiabilities_CapitalLeasesPayable = reader["Liabilities_CurrentLiabilities_CapitalLeasesPayable"];
        this.Liabilities_CurrentLiabilities_ClaimsPayable = reader["Liabilities_CurrentLiabilities_ClaimsPayable"];
        this.Liabilities_CurrentLiabilities_OtherCurrentLiabilities = reader["Liabilities_CurrentLiabilities_OtherCurrentLiabilities"];
        this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable = reader["Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable"];
        this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable = reader["Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable"];
        this.Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion = reader["Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion = reader["Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion = reader["Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion = reader["Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion = reader["Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_OtherLongTermLiabilities = reader["Liabilities_LongTermLiabilities_OtherLongTermLiabilities"];
        this.Liabilities_TotalDeferredInflowsOfResources = reader["Liabilities_TotalDeferredInflowsOfResources"];
        this.NetPosition_NetInvestmentInCapitalAssets = reader["NetPosition_NetInvestmentInCapitalAssets"];
        this.NetPosition_Restricted = reader["NetPosition_Restricted"];
        this.NetPosition_Unrestricted = reader["NetPosition_Unrestricted"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterAdd", connection);
        
        
        command.Parameters.AddWithValue("@Assets_CurrentAssets_CashAndCashEquivalents", this.Assets_CurrentAssets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Investments", this.Assets_CurrentAssets_Investments);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Receivables_Accounts", this.Assets_CurrentAssets_Receivables_Accounts);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Receivables_Intergovernmental", this.Assets_CurrentAssets_Receivables_Intergovernmental);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_InventoryHeldForResale", this.Assets_CurrentAssets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_MaterialsAndSuppliesInventory", this.Assets_CurrentAssets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_PrepaidItems", this.Assets_CurrentAssets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_InterfundReceivable", this.Assets_CurrentAssets_InterfundReceivable);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_OtherCurrentAssets", this.Assets_CurrentAssets_OtherCurrentAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents", this.Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits", this.Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_Investment", this.Assets_NoncurrentAsset_Investment);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:", this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_Less:AccumulatedDepreciation", this.Assets_NoncurrentAsset_Less:AccumulatedDepreciation);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_OtherNoncurrentAssets", this.Assets_NoncurrentAsset_OtherNoncurrentAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_AccountsPayable", this.Liabilities_CurrentLiabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_AccruedWages", this.Liabilities_CurrentLiabilities_AccruedWages);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_IntergovernmentalPayable", this.Liabilities_CurrentLiabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_DueToOtherFunds", this.Liabilities_CurrentLiabilities_DueToOtherFunds);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_CompensatedAbsencesPayable", this.Liabilities_CurrentLiabilities_CompensatedAbsencesPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_MaturedBondsPayable", this.Liabilities_CurrentLiabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_MaturedInterestPayable", this.Liabilities_CurrentLiabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_UnearnedRevenue", this.Liabilities_CurrentLiabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_GeneralObligationBondsPayable", this.Liabilities_CurrentLiabilities_GeneralObligationBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_CapitalLeasesPayable", this.Liabilities_CurrentLiabilities_CapitalLeasesPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_ClaimsPayable", this.Liabilities_CurrentLiabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_OtherCurrentLiabilities", this.Liabilities_CurrentLiabilities_OtherCurrentLiabilities);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable", this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable", this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_OtherLongTermLiabilities", this.Liabilities_LongTermLiabilities_OtherLongTermLiabilities);
        command.Parameters.AddWithValue("@Liabilities_TotalDeferredInflowsOfResources", this.Liabilities_TotalDeferredInflowsOfResources);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_Unrestricted", this.NetPosition_Unrestricted);

        connection.Open();
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterId", this.id);
        
        command.Parameters.AddWithValue("@Assets_CurrentAssets_CashAndCashEquivalents", this.Assets_CurrentAssets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Investments", this.Assets_CurrentAssets_Investments);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Receivables_Accounts", this.Assets_CurrentAssets_Receivables_Accounts);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_Receivables_Intergovernmental", this.Assets_CurrentAssets_Receivables_Intergovernmental);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_InventoryHeldForResale", this.Assets_CurrentAssets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_MaterialsAndSuppliesInventory", this.Assets_CurrentAssets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_PrepaidItems", this.Assets_CurrentAssets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_InterfundReceivable", this.Assets_CurrentAssets_InterfundReceivable);
        command.Parameters.AddWithValue("@Assets_CurrentAssets_OtherCurrentAssets", this.Assets_CurrentAssets_OtherCurrentAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents", this.Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits", this.Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_Investment", this.Assets_NoncurrentAsset_Investment);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:", this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets:);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_Less:AccumulatedDepreciation", this.Assets_NoncurrentAsset_Less:AccumulatedDepreciation);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_OtherNoncurrentAssets", this.Assets_NoncurrentAsset_OtherNoncurrentAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_AccountsPayable", this.Liabilities_CurrentLiabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_AccruedWages", this.Liabilities_CurrentLiabilities_AccruedWages);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_IntergovernmentalPayable", this.Liabilities_CurrentLiabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_DueToOtherFunds", this.Liabilities_CurrentLiabilities_DueToOtherFunds);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_CompensatedAbsencesPayable", this.Liabilities_CurrentLiabilities_CompensatedAbsencesPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_MaturedBondsPayable", this.Liabilities_CurrentLiabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_MaturedInterestPayable", this.Liabilities_CurrentLiabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_UnearnedRevenue", this.Liabilities_CurrentLiabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_GeneralObligationBondsPayable", this.Liabilities_CurrentLiabilities_GeneralObligationBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_CapitalLeasesPayable", this.Liabilities_CurrentLiabilities_CapitalLeasesPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_ClaimsPayable", this.Liabilities_CurrentLiabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilities_OtherCurrentLiabilities", this.Liabilities_CurrentLiabilities_OtherCurrentLiabilities);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable", this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable", this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion", this.Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion);
        command.Parameters.AddWithValue("@Liabilities_LongTermLiabilities_OtherLongTermLiabilities", this.Liabilities_LongTermLiabilities_OtherLongTermLiabilities);
        command.Parameters.AddWithValue("@Liabilities_TotalDeferredInflowsOfResources", this.Liabilities_TotalDeferredInflowsOfResources);
        command.Parameters.AddWithValue("@NetPosition_NetInvestmentInCapitalAssets", this.NetPosition_NetInvestmentInCapitalAssets);
        command.Parameters.AddWithValue("@NetPosition_Restricted", this.NetPosition_Restricted);
        command.Parameters.AddWithValue("@NetPosition_Unrestricted", this.NetPosition_Unrestricted);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterDelete", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsWaterId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
