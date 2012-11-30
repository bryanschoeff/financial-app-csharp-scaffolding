namespace County.GAAP
{
  public class BalanceSheet_GovernmentalFunds_General
  {
    int id { get; set; }
    
    decimal Assets_CashAndCashEquivalents { get; set; }
    decimal Assets_Investments { get; set; }
    decimal Assets_InventoryHeldForResale { get; set; }
    decimal Assets_MaterialsAndSuppliesInventory { get; set; }
    decimal Assets_AccruedInterestReceivable { get; set; }
    decimal Assets_AccountsReceivable { get; set; }
    decimal Assets_InterfundReceivable { get; set; }
    decimal Assets_DueFromOtherFunds { get; set; }
    decimal Assets_IntergovernmentalReceivable { get; set; }
    decimal Assets_PrepaidItems { get; set; }
    decimal Assets_PropertyTaxesReceivable { get; set; }
    decimal Assets_SalesTaxReceivable { get; set; }
    decimal Assets_RevenueInLieuOfTaxesReceivable { get; set; }
    decimal Assets_DueFromOtherGovernments { get; set; }
    decimal Assets_NotesReceivable { get; set; }
    decimal Assets_LoansReceivable { get; set; }
    decimal Assets_OtherAssets { get; set; }
    decimal Assets_TotalDeferredOutflowsOfResources { get; set; }
    decimal Liabilities_AccountsPayable { get; set; }
    decimal Liabilities_AccruedWagesAndBenefits { get; set; }
    decimal Liabilities_ContractsPayable { get; set; }
    decimal Liabilities_IntergovernmentalPayable { get; set; }
    decimal Liabilities_DueToOtherGovernments { get; set; }
    decimal Liabilities_MaturedInterestPayable { get; set; }
    decimal Liabilities_MaturedBondsPayable { get; set; }
    decimal Liabilities_RetainagePayable { get; set; }
    decimal Liabilities_InterfundPayable { get; set; }
    decimal Liabilities_DueToOtherFunds { get; set; }
    decimal Liabilities_ClaimsPayable { get; set; }
    decimal Liabilities_UnearnedRevenue { get; set; }
    decimal Liabilities_NotesPayable { get; set; }
    decimal Liabilities_OtherLiabilities { get; set; }
    decimal Liabilities_TotalDeferredInflowsOfResources { get; set; }
    decimal FundBalances_Nonspendable { get; set; }
    decimal FundBalances_Restricted { get; set; }
    decimal FundBalances_Committed { get; set; }
    decimal FundBalances_Assigned { get; set; }
    decimal FundBalances_Unassigned { get; set; }

    public BalanceSheet_GovernmentalFunds_General()
    {
      this.id = -1;
    }
    
    public void Load(int id)
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_BalanceSheet_GovernmentalFunds_GeneralGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@BalanceSheet_GovernmentalFunds_GeneralId", id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Assets_CashAndCashEquivalents = reader["Assets_CashAndCashEquivalents"];
        this.Assets_Investments = reader["Assets_Investments"];
        this.Assets_InventoryHeldForResale = reader["Assets_InventoryHeldForResale"];
        this.Assets_MaterialsAndSuppliesInventory = reader["Assets_MaterialsAndSuppliesInventory"];
        this.Assets_AccruedInterestReceivable = reader["Assets_AccruedInterestReceivable"];
        this.Assets_AccountsReceivable = reader["Assets_AccountsReceivable"];
        this.Assets_InterfundReceivable = reader["Assets_InterfundReceivable"];
        this.Assets_DueFromOtherFunds = reader["Assets_DueFromOtherFunds"];
        this.Assets_IntergovernmentalReceivable = reader["Assets_IntergovernmentalReceivable"];
        this.Assets_PrepaidItems = reader["Assets_PrepaidItems"];
        this.Assets_PropertyTaxesReceivable = reader["Assets_PropertyTaxesReceivable"];
        this.Assets_SalesTaxReceivable = reader["Assets_SalesTaxReceivable"];
        this.Assets_RevenueInLieuOfTaxesReceivable = reader["Assets_RevenueInLieuOfTaxesReceivable"];
        this.Assets_DueFromOtherGovernments = reader["Assets_DueFromOtherGovernments"];
        this.Assets_NotesReceivable = reader["Assets_NotesReceivable"];
        this.Assets_LoansReceivable = reader["Assets_LoansReceivable"];
        this.Assets_OtherAssets = reader["Assets_OtherAssets"];
        this.Assets_TotalDeferredOutflowsOfResources = reader["Assets_TotalDeferredOutflowsOfResources"];
        this.Liabilities_AccountsPayable = reader["Liabilities_AccountsPayable"];
        this.Liabilities_AccruedWagesAndBenefits = reader["Liabilities_AccruedWagesAndBenefits"];
        this.Liabilities_ContractsPayable = reader["Liabilities_ContractsPayable"];
        this.Liabilities_IntergovernmentalPayable = reader["Liabilities_IntergovernmentalPayable"];
        this.Liabilities_DueToOtherGovernments = reader["Liabilities_DueToOtherGovernments"];
        this.Liabilities_MaturedInterestPayable = reader["Liabilities_MaturedInterestPayable"];
        this.Liabilities_MaturedBondsPayable = reader["Liabilities_MaturedBondsPayable"];
        this.Liabilities_RetainagePayable = reader["Liabilities_RetainagePayable"];
        this.Liabilities_InterfundPayable = reader["Liabilities_InterfundPayable"];
        this.Liabilities_DueToOtherFunds = reader["Liabilities_DueToOtherFunds"];
        this.Liabilities_ClaimsPayable = reader["Liabilities_ClaimsPayable"];
        this.Liabilities_UnearnedRevenue = reader["Liabilities_UnearnedRevenue"];
        this.Liabilities_NotesPayable = reader["Liabilities_NotesPayable"];
        this.Liabilities_OtherLiabilities = reader["Liabilities_OtherLiabilities"];
        this.Liabilities_TotalDeferredInflowsOfResources = reader["Liabilities_TotalDeferredInflowsOfResources"];
        this.FundBalances_Nonspendable = reader["FundBalances_Nonspendable"];
        this.FundBalances_Restricted = reader["FundBalances_Restricted"];
        this.FundBalances_Committed = reader["FundBalances_Committed"];
        this.FundBalances_Assigned = reader["FundBalances_Assigned"];
        this.FundBalances_Unassigned = reader["FundBalances_Unassigned"];
      
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
        SqlCommand command = new SqlCommand("County_GAAP_BalanceSheet_GovernmentalFunds_GeneralAdd", connection);
        
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InterfundReceivable", this.Assets_InterfundReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherFunds", this.Assets_DueFromOtherFunds);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_InterfundPayable", this.Liabilities_InterfundPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherFunds", this.Liabilities_DueToOtherFunds);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@Liabilities_TotalDeferredInflowsOfResources", this.Liabilities_TotalDeferredInflowsOfResources);
        command.Parameters.AddWithValue("@FundBalances_Nonspendable", this.FundBalances_Nonspendable);
        command.Parameters.AddWithValue("@FundBalances_Restricted", this.FundBalances_Restricted);
        command.Parameters.AddWithValue("@FundBalances_Committed", this.FundBalances_Committed);
        command.Parameters.AddWithValue("@FundBalances_Assigned", this.FundBalances_Assigned);
        command.Parameters.AddWithValue("@FundBalances_Unassigned", this.FundBalances_Unassigned);

        connection.Open();
        this.id = command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_BalanceSheet_GovernmentalFunds_GeneralUpdate", connection);

        command.Parameters.AddWithValue("@BalanceSheet_GovernmentalFunds_GeneralId", this.id);
        
        command.Parameters.AddWithValue("@Assets_CashAndCashEquivalents", this.Assets_CashAndCashEquivalents);
        command.Parameters.AddWithValue("@Assets_Investments", this.Assets_Investments);
        command.Parameters.AddWithValue("@Assets_InventoryHeldForResale", this.Assets_InventoryHeldForResale);
        command.Parameters.AddWithValue("@Assets_MaterialsAndSuppliesInventory", this.Assets_MaterialsAndSuppliesInventory);
        command.Parameters.AddWithValue("@Assets_AccruedInterestReceivable", this.Assets_AccruedInterestReceivable);
        command.Parameters.AddWithValue("@Assets_AccountsReceivable", this.Assets_AccountsReceivable);
        command.Parameters.AddWithValue("@Assets_InterfundReceivable", this.Assets_InterfundReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherFunds", this.Assets_DueFromOtherFunds);
        command.Parameters.AddWithValue("@Assets_IntergovernmentalReceivable", this.Assets_IntergovernmentalReceivable);
        command.Parameters.AddWithValue("@Assets_PrepaidItems", this.Assets_PrepaidItems);
        command.Parameters.AddWithValue("@Assets_PropertyTaxesReceivable", this.Assets_PropertyTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_SalesTaxReceivable", this.Assets_SalesTaxReceivable);
        command.Parameters.AddWithValue("@Assets_RevenueInLieuOfTaxesReceivable", this.Assets_RevenueInLieuOfTaxesReceivable);
        command.Parameters.AddWithValue("@Assets_DueFromOtherGovernments", this.Assets_DueFromOtherGovernments);
        command.Parameters.AddWithValue("@Assets_NotesReceivable", this.Assets_NotesReceivable);
        command.Parameters.AddWithValue("@Assets_LoansReceivable", this.Assets_LoansReceivable);
        command.Parameters.AddWithValue("@Assets_OtherAssets", this.Assets_OtherAssets);
        command.Parameters.AddWithValue("@Assets_TotalDeferredOutflowsOfResources", this.Assets_TotalDeferredOutflowsOfResources);
        command.Parameters.AddWithValue("@Liabilities_AccountsPayable", this.Liabilities_AccountsPayable);
        command.Parameters.AddWithValue("@Liabilities_AccruedWagesAndBenefits", this.Liabilities_AccruedWagesAndBenefits);
        command.Parameters.AddWithValue("@Liabilities_ContractsPayable", this.Liabilities_ContractsPayable);
        command.Parameters.AddWithValue("@Liabilities_IntergovernmentalPayable", this.Liabilities_IntergovernmentalPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherGovernments", this.Liabilities_DueToOtherGovernments);
        command.Parameters.AddWithValue("@Liabilities_MaturedInterestPayable", this.Liabilities_MaturedInterestPayable);
        command.Parameters.AddWithValue("@Liabilities_MaturedBondsPayable", this.Liabilities_MaturedBondsPayable);
        command.Parameters.AddWithValue("@Liabilities_RetainagePayable", this.Liabilities_RetainagePayable);
        command.Parameters.AddWithValue("@Liabilities_InterfundPayable", this.Liabilities_InterfundPayable);
        command.Parameters.AddWithValue("@Liabilities_DueToOtherFunds", this.Liabilities_DueToOtherFunds);
        command.Parameters.AddWithValue("@Liabilities_ClaimsPayable", this.Liabilities_ClaimsPayable);
        command.Parameters.AddWithValue("@Liabilities_UnearnedRevenue", this.Liabilities_UnearnedRevenue);
        command.Parameters.AddWithValue("@Liabilities_NotesPayable", this.Liabilities_NotesPayable);
        command.Parameters.AddWithValue("@Liabilities_OtherLiabilities", this.Liabilities_OtherLiabilities);
        command.Parameters.AddWithValue("@Liabilities_TotalDeferredInflowsOfResources", this.Liabilities_TotalDeferredInflowsOfResources);
        command.Parameters.AddWithValue("@FundBalances_Nonspendable", this.FundBalances_Nonspendable);
        command.Parameters.AddWithValue("@FundBalances_Restricted", this.FundBalances_Restricted);
        command.Parameters.AddWithValue("@FundBalances_Committed", this.FundBalances_Committed);
        command.Parameters.AddWithValue("@FundBalances_Assigned", this.FundBalances_Assigned);
        command.Parameters.AddWithValue("@FundBalances_Unassigned", this.FundBalances_Unassigned);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }

    protected void Delete()
    {
      using connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements");
      {
        SqlCommand command = new SqlCommand("County_GAAP_BalanceSheet_GovernmentalFunds_GeneralDelete", connection);

        command.Parameters.AddWithValue("@BalanceSheet_GovernmentalFunds_GeneralId", this.id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
