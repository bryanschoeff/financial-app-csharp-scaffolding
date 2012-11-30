using System.Data.SqlClient;
using System.Configuration;

namespace County.GAAP
{
  public class StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer
  {
    public int Id { get; set; }
    
    public decimal Assets_CurrentAssets_CashAndCashEquivalents { get; set; }
    public decimal Assets_CurrentAssets_Investments { get; set; }
    public decimal Assets_CurrentAssets_Receivables_Accounts { get; set; }
    public decimal Assets_CurrentAssets_Receivables_Intergovernmental { get; set; }
    public decimal Assets_CurrentAssets_InventoryHeldForResale { get; set; }
    public decimal Assets_CurrentAssets_MaterialsAndSuppliesInventory { get; set; }
    public decimal Assets_CurrentAssets_PrepaidItems { get; set; }
    public decimal Assets_CurrentAssets_InterfundReceivable { get; set; }
    public decimal Assets_CurrentAssets_OtherCurrentAssets { get; set; }
    public decimal Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents { get; set; }
    public decimal Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits { get; set; }
    public decimal Assets_NoncurrentAsset_Investment { get; set; }
    public decimal Assets_NoncurrentAsset_CapitalAssets_CapitalAssets { get; set; }
    public decimal Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets { get; set; }
    public decimal Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets { get; set; }
    public decimal Assets_NoncurrentAsset_LessAccumulatedDepreciation { get; set; }
    public decimal Assets_NoncurrentAsset_OtherNoncurrentAssets { get; set; }
    public decimal Assets_TotalDeferredOutflowsOfResources { get; set; }
    public decimal Liabilities_CurrentLiabilities_AccountsPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_AccruedWages { get; set; }
    public decimal Liabilities_CurrentLiabilities_IntergovernmentalPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_DueToOtherFunds { get; set; }
    public decimal Liabilities_CurrentLiabilities_CompensatedAbsencesPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_MaturedBondsPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_MaturedInterestPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_UnearnedRevenue { get; set; }
    public decimal Liabilities_CurrentLiabilities_GeneralObligationBondsPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_CapitalLeasesPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_ClaimsPayable { get; set; }
    public decimal Liabilities_CurrentLiabilities_OtherCurrentLiabilities { get; set; }
    public decimal Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable { get; set; }
    public decimal Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable { get; set; }
    public decimal Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion { get; set; }
    public decimal Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion { get; set; }
    public decimal Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion { get; set; }
    public decimal Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion { get; set; }
    public decimal Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion { get; set; }
    public decimal Liabilities_LongTermLiabilities_OtherLongTermLiabilities { get; set; }
    public decimal Liabilities_TotalDeferredInflowsOfResources { get; set; }
    public decimal NetPosition_NetInvestmentInCapitalAssets { get; set; }
    public decimal NetPosition_Restricted { get; set; }
    public decimal NetPosition_Unrestricted { get; set; }

    public StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewer()
    {
      this.Id = -1;
    }
    
    public void Load(int Id)
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerGetByID", connection);
        SqlDataReader reader;
        
        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", Id);

        connection.Open();
        reader = command.ExecuteReader();                                                   
        reader.Read();  
        
        this.Assets_CurrentAssets_CashAndCashEquivalents = (decimal)reader["Assets_CurrentAssets_CashAndCashEquivalents"];
        this.Assets_CurrentAssets_Investments = (decimal)reader["Assets_CurrentAssets_Investments"];
        this.Assets_CurrentAssets_Receivables_Accounts = (decimal)reader["Assets_CurrentAssets_Receivables_Accounts"];
        this.Assets_CurrentAssets_Receivables_Intergovernmental = (decimal)reader["Assets_CurrentAssets_Receivables_Intergovernmental"];
        this.Assets_CurrentAssets_InventoryHeldForResale = (decimal)reader["Assets_CurrentAssets_InventoryHeldForResale"];
        this.Assets_CurrentAssets_MaterialsAndSuppliesInventory = (decimal)reader["Assets_CurrentAssets_MaterialsAndSuppliesInventory"];
        this.Assets_CurrentAssets_PrepaidItems = (decimal)reader["Assets_CurrentAssets_PrepaidItems"];
        this.Assets_CurrentAssets_InterfundReceivable = (decimal)reader["Assets_CurrentAssets_InterfundReceivable"];
        this.Assets_CurrentAssets_OtherCurrentAssets = (decimal)reader["Assets_CurrentAssets_OtherCurrentAssets"];
        this.Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents = (decimal)reader["Assets_NoncurrentAsset_RestrictedAssets_CashAndCashEquivalents"];
        this.Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits = (decimal)reader["Assets_NoncurrentAsset_RestrictedAssets_CustomerDeposits"];
        this.Assets_NoncurrentAsset_Investment = (decimal)reader["Assets_NoncurrentAsset_Investment"];
        this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets = (decimal)reader["Assets_NoncurrentAsset_CapitalAssets_CapitalAssets"];
        this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets = (decimal)reader["Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets"];
        this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets = (decimal)reader["Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets"];
        this.Assets_NoncurrentAsset_LessAccumulatedDepreciation = (decimal)reader["Assets_NoncurrentAsset_LessAccumulatedDepreciation"];
        this.Assets_NoncurrentAsset_OtherNoncurrentAssets = (decimal)reader["Assets_NoncurrentAsset_OtherNoncurrentAssets"];
        this.Assets_TotalDeferredOutflowsOfResources = (decimal)reader["Assets_TotalDeferredOutflowsOfResources"];
        this.Liabilities_CurrentLiabilities_AccountsPayable = (decimal)reader["Liabilities_CurrentLiabilities_AccountsPayable"];
        this.Liabilities_CurrentLiabilities_AccruedWages = (decimal)reader["Liabilities_CurrentLiabilities_AccruedWages"];
        this.Liabilities_CurrentLiabilities_IntergovernmentalPayable = (decimal)reader["Liabilities_CurrentLiabilities_IntergovernmentalPayable"];
        this.Liabilities_CurrentLiabilities_DueToOtherFunds = (decimal)reader["Liabilities_CurrentLiabilities_DueToOtherFunds"];
        this.Liabilities_CurrentLiabilities_CompensatedAbsencesPayable = (decimal)reader["Liabilities_CurrentLiabilities_CompensatedAbsencesPayable"];
        this.Liabilities_CurrentLiabilities_MaturedBondsPayable = (decimal)reader["Liabilities_CurrentLiabilities_MaturedBondsPayable"];
        this.Liabilities_CurrentLiabilities_MaturedInterestPayable = (decimal)reader["Liabilities_CurrentLiabilities_MaturedInterestPayable"];
        this.Liabilities_CurrentLiabilities_UnearnedRevenue = (decimal)reader["Liabilities_CurrentLiabilities_UnearnedRevenue"];
        this.Liabilities_CurrentLiabilities_GeneralObligationBondsPayable = (decimal)reader["Liabilities_CurrentLiabilities_GeneralObligationBondsPayable"];
        this.Liabilities_CurrentLiabilities_CapitalLeasesPayable = (decimal)reader["Liabilities_CurrentLiabilities_CapitalLeasesPayable"];
        this.Liabilities_CurrentLiabilities_ClaimsPayable = (decimal)reader["Liabilities_CurrentLiabilities_ClaimsPayable"];
        this.Liabilities_CurrentLiabilities_OtherCurrentLiabilities = (decimal)reader["Liabilities_CurrentLiabilities_OtherCurrentLiabilities"];
        this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable = (decimal)reader["Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_RevenueBondsPayable"];
        this.Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable = (decimal)reader["Liabilities_CurrentLiabilitiesPayableFromRestrictedAssets_AccruedInterestPayable"];
        this.Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion = (decimal)reader["Liabilities_LongTermLiabilities_CompensatedAbsencesPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion = (decimal)reader["Liabilities_LongTermLiabilities_GeneralObligationBondsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion = (decimal)reader["Liabilities_LongTermLiabilities_RevenueBondsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion = (decimal)reader["Liabilities_LongTermLiabilities_CapitalLeasesPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion = (decimal)reader["Liabilities_LongTermLiabilities_ClaimsPayableNetOfCurrentPortion"];
        this.Liabilities_LongTermLiabilities_OtherLongTermLiabilities = (decimal)reader["Liabilities_LongTermLiabilities_OtherLongTermLiabilities"];
        this.Liabilities_TotalDeferredInflowsOfResources = (decimal)reader["Liabilities_TotalDeferredInflowsOfResources"];
        this.NetPosition_NetInvestmentInCapitalAssets = (decimal)reader["NetPosition_NetInvestmentInCapitalAssets"];
        this.NetPosition_Restricted = (decimal)reader["NetPosition_Restricted"];
        this.NetPosition_Unrestricted = (decimal)reader["NetPosition_Unrestricted"];
      
        connection.Close();
      }
    }

    public void Save()
    {
      if (this.Id == -1)
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
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerAdd", connection);
        
        
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
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_CapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_LessAccumulatedDepreciation", this.Assets_NoncurrentAsset_LessAccumulatedDepreciation);
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
        this.Id = (int)command.ExecuteScalar();
        connection.Close();
      }
    }

    protected void Update()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerUpdate", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.Id);
        
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
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_CapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_CapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_NondepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets", this.Assets_NoncurrentAsset_CapitalAssets_DepreciableCapitalAssets);
        command.Parameters.AddWithValue("@Assets_NoncurrentAsset_LessAccumulatedDepreciation", this.Assets_NoncurrentAsset_LessAccumulatedDepreciation);
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

    public void Delete()
    {
      using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString + ";initial catalog=OnlineFinancialStatements"))
      {
        SqlCommand command = new SqlCommand("County_GAAP_StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerDelete", connection);

        command.Parameters.AddWithValue("@StatementOfNetPosition_ProprietaryFunds_EnterpriseFundsSewerId", this.Id);

        connection.Open();
        command.ExecuteNonQuery();  
        connection.Close();
      }
    }
  }
}
